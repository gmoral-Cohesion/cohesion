//
//  DKFramework.swift
//  TRFramework - Sample
//
//  Copyright © 2017 United Technologies Corporation. All rights reserved.
//
// DKFramework is an application level wrapper around TRFramework that simplifies
// some of the common usage patterns of TRFramework.  The sample is geared
// towards the hospitality industry but is applicable to all cases of framework
// usage.
//
// This class can be copied into your project as a starter or used as a reference
// for your implementation of a TRFramework based app.
//

#if targetEnvironment(simulator)
#else

import TRFramework

class DKFramework: NSObject
{
    private static let frameworkPasswordKey : String = "FrameworkPassword"
    private static let lastCredentialSyncKey : String = "LastCredentialSync"
    
    //
    // Wrapper to return a valid instance of TRFramework for easier application
    // use.  This method handles initializing the framework if needed.
    //
    static func sharedFramework() -> TRFramework
    {
        var fw : TRFramework? = TRFramework.shared()
        if (fw == nil)
        {
            initFramework()
            fw = TRFramework.shared()
        }
        
        if (fw == nil)
        {
            // This is an error case that should never happen, but if it does,
            // the only way to receover is to force quit the app and try again.
            // If that does not work, the app will need to be deleted and 
            // re-installed.
            fatalError("Unable to initialize TRFramework.  Delete and re-install application")
        }
        
        return fw!;
    }
    
    //
    // Use an app generated GUID for the framework password.  The password is
    // stored in the keychain and protected at the same keychain access level
    // that is used to initialize the framework.
    //
    private static func frameworkPassword() -> String
    {
        var pwd : String?
        
        if (pwd == nil)
        {
            pwd = UUID().uuidString
            
            let errPointer : NSErrorPointer = nil
            //TRKeychain.saveString(toKeychain: pwd, key: frameworkPasswordKey, accessLevel: DKFrameworkConfig.keychainAccessLevel, error: errPointer)
            print("saveStringToKeychain returned \(String(describing: errPointer))")
        }
        
        return pwd!
    }
    
    //
    // The DirectKey system provides an additional security mechanism of passing a 
    // pin code to authenticate the user for any open operation.  In app where 
    // the user is authorized in some other manner, apps can securely retreive
    // the user pin code from the Core API and let use it without user 
    // interaction, or simply hardcode a pin code on the mobile side, as this 
    // sample has done.
    //
    private static func userPin() -> String
    {
        return "1234"
    }
    
    //
    // Initialize the framework with a stored application password.  If the stored
    // password fails, reset and re-initialize the framework.
    //
    private static func initFramework()
    {
        var err: Error? =  TRFramework.initWithPassword(frameworkPassword(), options: DKFrameworkConfig.frameworkInitOptions)
        if (err != nil)
        {
            err = TRFramework.resetSharedFramework()
            if (err == nil)
            {
                err = TRFramework.initWithPassword(frameworkPassword(), options: DKFrameworkConfig.frameworkInitOptions)
            }
        }
    }
    
    //
    // Reset the framework
    //
    static func resetFramework()
    {
        let err : Error? = TRFramework.resetSharedFramework()
        print("resetSharedFramework, error: \(String(describing: err))")
    }
    
    // 
    // Authorize the framework and perform a full sync
    //
    static func authorize(_ host: String, _ authCode: String, _ completion: @escaping (Error?) -> Void)
    {
        TRFramework.resetSharedFramework()
        
        sharedFramework().setAuthorizationCode(authCode, syncUrl: host, pinCode: userPin(), completionBlock:
        { (authorizeError : Error?) in
            
            print("Auth complete, error: \(String(describing: authorizeError))")
            
            if (authorizeError == nil)
            {
                updateKey(force: true, completion:
                { (didPerformSync: Bool, updateError: Error?) in
                    
                    print("Sync after auth complete, error: \(String(describing: updateError))")
                    completion(updateError)
                })
            }
            else
            {
                completion(authorizeError)
            }
        })
    }
    
    //
    // Helper method that checks to see if the framework has been authorized
    //
    static func hasAuthorizedWithServer() -> Bool
    {
        let serialNumber : String? = sharedFramework().localDeviceSerialNumber()
        if (serialNumber != nil)
        {
            return (serialNumber!.count > 0)
        }
        
        return false
    }
    
    //
    // Helper method to determine if its appropriate to scan for devices.  If 
    // the framework is not authorized or if there are no permissions downloaded
    // it doesn't make sense to use the BTLE radio because the framework cannot
    // interact with any devices.
    //
    private static func canScanForDevices(_ completion: @escaping (Bool) -> Void)
    {
        if (!hasAuthorizedWithServer())
        {
            completion(false)
        }
        else
        {
            sharedFramework().countAuthorizedDevices(
            { (count: UInt) in
                
                completion(count > 0)
            })
        }
    }
    
    private static func lastCredentialSyncTime() -> Date
    {
        var d = UserDefaults.standard.object(forKey: lastCredentialSyncKey) as? Date
        if (d == nil)
        {
            d = Date(timeIntervalSince1970: 0)
        }
        
        return d!
    }
    
    private static func setLastCredentialSyncTime(_ date: Date?)
    {
        UserDefaults.standard.set(date, forKey: lastCredentialSyncKey)
        UserDefaults.standard.synchronize()
    }
    
    private static func shouldUpdateKey(
        _ force : Bool,
        _ completion: @escaping (Bool) -> Void)
    {
        if (!hasAuthorizedWithServer())
        {
            print("Framework is not authorized, shouldUpdateKey: false")
            completion(false)
            return
        }
        
        if (sharedFramework().activeSyncRequest != nil)
        {
            print("Framework is already performing a sync, shouldUpdateKey: false")
            completion(false)
            return
        }
        
        if (force)
        {
            print("Forcing update, shouldUpdateKey: true")
            completion(true)
            return
        }
        
        let fw = sharedFramework()
        if (!fw.isLocalDeviceUpToDate())
        {
            print("Framework credentials are expired, shouldUpdateKey: true")
            completion(true)
            return
        }
        
        let timeSinceLastCredentialSync = Date().timeIntervalSince(lastCredentialSyncTime())
        if (timeSinceLastCredentialSync > DKFrameworkConfig.credentialSyncFrequency)
        {
            print("Last credential sync threshold, shouldUpdateKey: true")
            completion(true)
            return
        }
        
        sharedFramework().countAuthorizedDevices(
        { (count: UInt) in
            
            if (count == 0)
            {
                print("No permissions have been downloaded, shouldUpdateKey: true")
                completion(true)
            }
            else
            {
                print("Nothing to update, shouldUpdateKey: false")
                completion(false)
            }
        })
    }
    
    // 
    // After request open operations an Activity sync is performed by default,
    // but this method checks the last credential sync time and if the sync
    // frequency has passed, use this opportunity to perform a full credential
    // sync.
    //
    private static func adjustSyncType(_ syncType: TRSyncType) -> TRSyncType
    {
        var adjustedSyncType = syncType
        
        if (syncType == TRSyncTypeActivity)
        {
            let timeSinceLastCredentialSync = Date().timeIntervalSince(lastCredentialSyncTime())
            if (timeSinceLastCredentialSync > DKFrameworkConfig.credentialSyncFrequency)
            {
                print("Adjusting sync type from Activity to full")
                adjustedSyncType = TRSyncTypeFull
            }
        }
        
        return adjustedSyncType
    }
    
    static func updateKey()
    {
        updateKey(force: false, completion: nil)
    }
    
    static func updateKey(
        force: Bool,
        syncType: TRSyncType = TRSyncTypeFull,
        completion: ((_ didPerformSync: Bool, _ error: Error?) -> Void)?)
    {
        shouldUpdateKey(force)
        { (shouldSync : Bool) in
            
            if (shouldSync)
            {
                let adjustedSyncType = adjustSyncType(syncType)
                print("Adjusted Sync Request type: \(String(describing: adjustedSyncType))")
                
                let syncRequest : TRSyncRequest = TRSyncRequest(syncType: adjustedSyncType)
                syncRequest.syncCompletedCallback =
                { (request : TRSyncRequest?, syncCompleted: Bool, error: Error?) in
                    
                    print("Sync Completed, error: \(String(describing: error))")
                    
                    if (didSyncCredentials(request))
                    {
                        setLastCredentialSyncTime(Date())
                    }
                    
                    completion?(true, error)
                }
                
                sharedFramework().requestSync(withServer: syncRequest)
            }
            else
            {
                completion?(false, nil)
            }
        }
    }
    
    private static func didSyncCredentials(_ request: TRSyncRequest?) -> Bool
    {
        if (request != nil)
        {
            switch (request!.syncType)
            {
                case TRSyncTypeCredentials,
                     TRSyncTypeFull:
                
                    return true
                
                default:
                    return false
            }
        }
        
        return false
    }
    
    static func startScanning(
        onStarted: @escaping () -> Void,
        onEnded: @escaping () -> Void,
        onError: @escaping (Error) -> Void,
        onDevicesReturned: @escaping ([TRDevice]) -> Void)
    {
        let discoveryRequest : TRDiscoveryRequest = TRDiscoveryRequest()
        discoveryRequest.discoveryStartedCallback =
        { (discoveryRequest : TRDiscoveryRequest) in
            onStarted()
        }
        
        discoveryRequest.discoveryEndedCallback =
        { (discoveryRequest : TRDiscoveryRequest) in
            onEnded()
        }
        
        discoveryRequest.errorEncounteredCallback =
        { (discoveryRequest : TRDiscoveryRequest, syncHalted : Bool, error: Error) in
            onError(error)
        }
        
        discoveryRequest.nearbyDevicesChangedCallback =
        { (discoveryRequest : TRDiscoveryRequest, list : [TRDevice]) in
            onDevicesReturned(list)
        }
        
        discoveryRequest.deviceShouldAuthenticate =
        { (_ discoveryRequest : TRDiscoveryRequest, _ device: TRDevice) -> Bool in
            
            return shouldQuickAuthToDevice(discoveryRequest, device)
        }
        
        discoveryRequest.pinCodeForAuthentication = userPin()
        
        canScanForDevices(
        { (ok:Bool) in
            
            if (ok)
            {
                sharedFramework().stopDiscovery()
                sharedFramework().startDiscovery(discoveryRequest)
            }
            else
            {
                print("TRFramework is not authorized or has no credentials, cannot start scan now")
                onDevicesReturned([])
            }
        })
    }
    
    static func openDevice(_ device: TRDevice, _ completion: @escaping (Error?) -> Void)
    {
        DKFramework.sharedFramework().requestOpen(device, pinCode: userPin(), completionBlock:
        { (device: TRDevice, success: Bool, error: Error?) in
            
            print("Open Door finished, success: \(success), error: \(String(describing: error))")
            
            if(success)
            {
                // On success, upload the activity to the server
                self.updateKey(force: true, syncType: TRSyncTypeActivity, completion: nil)
            }
            
            completion(error)
        })
    }
    
    static func stopScanning()
    {
        sharedFramework().stopDiscovery()
    }
    
    // Example criteria for quick connect:
    //
    // 1. Scan has not been going for more than 60 seconds.
    // 2. Privacy Dead Bolt NOT set - The assumption here is that a hotel
    //    guest is most likely inside their room if the deadbolt is engaged,
    //    so the app doesn't need to attempt a connection to the broker.
    // 3. Access category is 'guest'. The assumption here is that
    //    this is something to indicate this is a user guest room vs. a
    //    public or shared door.
    // 4. RSSI above a certain threshold.  The idea here is that the app would
    //    only trigger the authentication step once the user is relatively
    //    close to the door.
    //
    private static func shouldQuickAuthToDevice(
        _ discoveryRequest : TRDiscoveryRequest,
        _ device : TRDevice) -> Bool
    {
        var discoveryStart : TimeInterval = 0
        if (discoveryRequest.discoveryBeginTime != nil)
        {
            discoveryStart = discoveryRequest.discoveryBeginTime!.timeIntervalSinceReferenceDate
        }
        
        let now : TimeInterval = Date().timeIntervalSinceReferenceDate
        let discoveryDuration = now - discoveryStart
        if (discoveryDuration > DKFrameworkConfig.quickConnectTimeout)
        {
            print("Scan has been ongoing for longer than 60 seconds, do not use quick auth")
            return false
        }
        
        if (device.isPrivacyDeadboltSet())
        {
            print("Privacy deadbolt is set, do not use quick auth")
            return false
        }
        
        if (device.accessCategory != DKFrameworkConfig.quickConnectAccessCategory)
        {
            print("Device does not have correct access category, do not use quick auth")
            return false
        }
        
        if (device.averageRSSIValue == nil)
        {
            print("No signal strength for device, do not use quick auth")
            return false
        }
        
        if (device.averageRSSIValue!.intValue < DKFrameworkConfig.quickConnectRssiThreshold)
        {
            print("Signal strength too low, do not use quick auth")
            return false
        }
        
        print("All checks pass, returning true to allow quick auth")
        return true
    }
}

#endif
