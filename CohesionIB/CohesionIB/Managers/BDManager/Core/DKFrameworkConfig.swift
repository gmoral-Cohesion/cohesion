//
//  DKFrameworkConfig.swift
//  TRFramework - Sample
//
//  Copyright © 2017 United Technologies Corporation. All rights reserved.
//
//  DKFrameworkConfig is a common place to define constants used by callers
//  of TRFramework.

#if targetEnvironment(simulator)
#else

import UIKit
import TRFramework

struct DKFrameworkConfig
{
    // Default keychain access level is kSecAttrAccessibleWhenUnlockedThisDeviceOnly - In this mode
    // the phone must be unlocked in order for TRFramework to be used.  This mode
    // will work for most applications.
    //
    // For applications that require different use cases, such as Apple Watch
    // connectivity, you need to use a less restrictive keychain access level,
    // such as kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly
    //
    // One thing to note about the keychain is that the values persist beyond
    // application delete/intall cycles.  TRFramework stores the device 
    // identifier in the keychain the first time its ever run on a device.  In
    // cases where an application needs to change the keychain access level, the
    // folloing procedure must be used:
    //
    // 1. App must be launched into a mode where it has access to the keychain.  
    // This basically means this recovery process has to happen when the user 
    // launches the app into the foreground, and cannot happen from a background
    // type of launch.
    //
    // 2. App must call [TRKeychain clearKeychain].  This will remove the stored
    // device identifier.  This step will not work if clear keychain is called
    // when the application does not have proper permissions for the keychain.
    // Apps can use [TRFramework checkKeychainAccessLevel] to determine if they
    // have the proper permissions for accessing the keychain.
    //
    // 3. App can now re-initialize TRFramework with the desired keychain access
    // level.
    //
    static let keychainAccessLevel : CFTypeRef = kSecAttrAccessibleWhenUnlockedThisDeviceOnly
    
    // Default framework initialization options
    static var frameworkInitOptions : Dictionary<AnyHashable, Any>
    {
        return [ TRFrameworkConfigKeychainAccessLevel: DKFrameworkConfig.keychainAccessLevel ]
    }
    
    //
    // In the best effort approach tok keeping the key up to date always, it is a
    // good idea to enforce a periodic credential sync.  We use 24 hours in the 
    // sample, but this value is really dependant upon the system TRFramework 
    // is being used in.
    //
    static let credentialSyncFrequency : TimeInterval =  60 * 60 * 24
    
    //
    // In a hotel based app, using quick auth on the users guest room will
    // help speed up the time the user has to wait in the app.  A simple approach
    // to filter devices to quick connect to is to use access category.
    //
    static let quickConnectAccessCategory : String = "guest"
    
    //
    // In order to reduce BTLE usage on the phone, if a scan goes for longer than
    // a specified period of time, quick connect will not be used.
    //
    static let quickConnectTimeout : TimeInterval = 60
    
    //
    // Only use quick connect when the phone has a relatively strong signal to
    // the broker.
    //
    static let quickConnectRssiThreshold = -100
}

#endif
