// OrigoKeysManager.h
// Copyright (c) 2018 HID Origo Mobile Services
//
// All rights reserved.

#import <Foundation/Foundation.h>
#import "OrigoKeysManagerDelegate.h"
#import "OrigoKeysReader.h"
#import "OrigoKeysKey.h"
#import "OrigoKeysTimeoutConfiguration.h"
#import "OrigoKeysLastAuthenticationInfo.h"
#import "OrigoKeysEndpointInfo.h"
#import "OrigoKeysSeosTag.h"
#import "OrigoKeysSeosProvider.h"

NS_ASSUME_NONNULL_BEGIN

extern NSString *OrigoKeysPreconditionFailedException;

extern void OrigoKeysPreconditionCheckTriggered(NSString *message);


#define OrigoKeysPreconditionCheck(condition, ...) if(!(condition)) OrigoKeysPreconditionCheckTriggered([NSString stringWithFormat:__VA_ARGS__])

extern const NSString *OrigoKeysOptionApplicationId;
extern const NSString *OrigoKeysOptionVersion;
extern const NSString *OrigoKeysOptionBeaconUUID;
extern const NSString *OrigoKeysOptionTSMPublicCert;
extern const NSString *OrigoKeysOptionTSMBaseURL;
extern const NSString *OrigoKeysOptionPeripheralMode;
extern const NSString *OrigoKeysOptionMotionManager;
extern const NSString *OrigoKeysOptionCustomEventValue;
extern const NSString *OrigoKeysOptionCustomSetupAkeKey;
extern const NSString *OrigoKeysOptionSuppressApplePay;
/**
 * Configuration definition for the scan modes available in the Origo Keys SDK
 * @see `-[OrigoKeysManager startReaderScanInMode:supportedOpeningTypes:lockServiceCodes:error:]`
 */
typedef NS_ENUM(NSInteger, OrigoKeysScanMode) {
    /**
     * Enable Location Monitoring while scanning for readers
     */
    OrigoKeysScanModeOptimizePerformance = 0,
    /**
     * Do not enable Location Monitoring while scanning for readers
     */
    OrigoKeysScanModeOptimizePowerConsumption = 1
};
/* Configuration definition for the scan modes available in the Origo Keys SDK
* @see `-[OrigoKeysManager startReaderScanInMode:supportedOpeningTypes:lockServiceCodes:error:]`
*/

typedef NS_ENUM(NSInteger, OrigoKeysUnlockOpeningType) {

    OrigoKeysUnlockOpeningTypeNone = 0,

    OrigoKeysUnlockOpeningTypeWidget = 1,

    OrigoKeysUnlockOpeningTypeWearable = 2,
    
    OrigoKeysUnlockOpeningTypeTG = 3

};
/**
 * Contains assorted information about the device and the device settings to provide a good user experience.
 * @see `-[OrigoKeysManager healthCheck]`
 */
typedef NS_ENUM(NSInteger, OrigoKeysInfoType) {
    /**
     * Bluetooth services is not authorized by user. Recommended user action is to change permissions.
     */
    OrigoKeysInfoTypeBleNotSupported = 1,
    /**
     * Bluetooth services is not authorized by this device. Recommended user action is to change device.
     */
    OrigoKeysInfoTypeBleTurnedOff,
    /**
     * Location services is not enabled in app project settings. Recommended developer action is to change project settings.
     */
    OrigoKeysInfoTypeLocationServicesNotEnabled,
    /**
     * Location services authorization is not determined by user. Recommended developer action is to call requestAlwaysAuthorization.
     */
    OrigoKeysInfoTypeLocationServicesNotDetermined,
    /**
     * Location services is not authorized by user. Recommended user action is to change permissions.
     */
    OrigoKeysInfoTypeLocationServicesTurnedOff,
    /**
     * CLBeaconRegion monitoring or ranging is not supported by this device. Recommended user action is to change device.
     */
    OrigoKeysInfoTypeLocationMonitoringNotSupported,
    /**
     * CLBeaconRegion monitoring or ranging is not authorized by the user. Recommended user action is to change permissions.
     */
    OrigoKeysInfoTypeLocationMonitoringTurnedOff,
    /**
     * Passcode may be turned off. This cannot be verified reliably, but
     */
    OrigoKeysInfoTypePasscodeWarning,
    /**
     *Bluetooth services for peripheral, Bluetooth sharing.
    */
    OrigoKeysInfoTypeBleSharingTurnedOff
};


/**
 * This is the main class of the HID Origo API.
 * <p>
 * This API is used to communicate with the Seos TSM and to read/write Origo keys to the
 * Seos application, located in a secure storage file on the device.
 * </p>
 * <p>
 * The API contains some asynchronous methods. The API will not allow for  multiple asynchronous tasks to be
 * launched at the same time. If you launch an asynchronous task while another has not yet finished
 * a NSError` will be returned with error code `OrigoKeysErrorCode OrigoKeysApiIsBusyError`.
 * </p>
 * When initializing the BLE scan, the SDK can optionally enable Location Monitoring as well. This will improve
 * the responsiveness when finding Readers, but will consume more power, especially if the application is running
 * in the background.
 */

@interface OrigoKeysManager : NSObject
#pragma mark Initialization and configuration

/**
 * Creates and initializes an instance of the `OrigoKeysManager`. It is advisable that you keep the reference to the
 * Manager for the duration of your application life cycle. It is not currently possible to have multiple instances
 * of the Manager.
 *
 * @param delegate - The object who wishes to implement the protocols enforced by the API
 * @param options - Application settings for controlling application behaviour. The key `OrigoKeysOptionApplicationId`
 * is a string provided by ASSA ABLOY that uniquely identifies the application and the key `OrigoKeysOptionVersion`
 * is a string describing the application name and version. The key `OrigoKeysOptionBeaconUUID` is a string describing
 * a iBeacon UUID to monitor. If defined, this string will override the default iBeacon UUID monitored.
 */
- (instancetype)initWithDelegate:(NSObject <OrigoKeysManagerDelegate> *)delegate options:(NSDictionary *)options;

/**
 * Changes opening types provided in application config during runtime
 * @param openingTypes A list of @(OrigoKeysOpeningType)
 */
- (void)setSupportedOpeningTypes:(NSArray *)openingTypes;

/**
 * Override default timeout values
 * @param timeoutConfiguration A timeout configuration
 */
- (void)setTimeoutConfiguration:(OrigoKeysTimeoutConfiguration *)timeoutConfiguration;

#pragma mark Seos TSM Integration calls

/**
 * Installs and personalizes the Seos application on current secure element. This is a long running process
 * involving TCP/IP communication with the Seos TSM, so good practice is to make sure the phone has an internet
 * connection before calling this method.
 *
 * The delegate method `-[OrigoKeysManagerDelegate OrigoKeysDidSetupEndpoint]` is called when the endpoint
 * has successfully been set up. If the setup fails, the delegate method
 * `-[OrigoKeysManagerDelegate OrigoKeysDidDidFailToSetupEndpoint:]` will be called.
 *
 * @param invitationCode A Origo Keys Invitation code on the form "XXXX-XXXX-XXXX-XXXX". The invitation code
 * includes information specifying what environment (e.g. test or prod) that should be used.
 * @see isEndpointSetup:
 * @warning This method will throw an exception if the sdk has not been started
 */
- (void)setupEndpoint:(NSString *)invitationCode;

/**
 * This method will take care of contacting the Seos TSM to download any updates to the local
 * personalized endpoint. This is a long running process
 * involving TCP/IP communication with the Seos TSM, so good practice is to make sure the phone has an internet
 * connection before calling this method. The updates can be new keys, key revocations, key updates, but also endpoint
 * terminations. If the endpoint is successfully updated, the OrigoKeysManager object calls the OrigoKeysDidUpdateEndpoint:
 * method of its delegate object. If the connection attempt fails, the OrigoKeysManager object calls the
 * OrigoKeysDidFailToUpdateEndpoint: method of its delegate object instead. If the endpoint was terminated, the
 * OrigoKeysManager object also calls the OrigoKeysDidTerminateEndpoint method on its delegate object.
 *
 * If the endpoint has been terminated, a new invitation code is required to set it up.
 * @warning This method will throw an exception if the SDK has not been started, or if the endpoint is not already setup
 */
- (void)updateEndpoint;

 /**
 * This method will take care of contacting the Seos TSM to unregister (terminate) the local
 * personalized endpoint. This is a long running process
 * involving TCP/IP communication with the Seos TSM, so good practice is to make sure the phone has an internet
 * connection before calling this method. If the endpoint was terminated, the
 * OrigoKeysManager object also calls the OrigoKeysDidTerminateEndpoint method on its delegate object.
 *
 * If the endpoint has been terminated, a new invitation code is required to set it up.
 * @warning This method will throw an exception if the SDK has not been started, or if the endpoint is not already setup
 */
- (void)unregisterEndpoint;

/**
 * This method should always be called after `-[OrigoKeysManager initWithDelegate:options:]` weather the endpoint is setup or not. If the
 * startup is successful, the `OrigoKeysManager` object calls the `OrigoKeysDidStartup` method on its delegate object. If the startup
 * fails, the OrigoKeysManager object calls the OrigoKeysDidFailToStartup: method of its delegate object instead.
 *
 * This method may involve TCP/IP communication with the Seos TSM, so good practice is to make sure the phone has an internet
 * connection before calling this method. (One of the tasks performed by this method is upgrading the local environment if
 * the server protocol has been updated.)
 *
 * @warning This method will throw an exception if called more than once
 */
- (void)startup;

/**
 * Checks if Seos is installed and personalized on the secure element. If not, you need to call the
 * endpointSetup method to complete the setup.
 * Note that most of the other methods in the API requires the setup to be complete to run successfully.
 *
 * Because of concurrency reasons, the result of this method may not be always accurate, but it will always return the
 * last known state. For example; if the endpoint is currently being terminated, this method will return @YES if called
 * before the termination has been completed.
 *
 * @param error - The cause of the failure, code is one of `OrigoKeysErrorCode` or nil if no error.
 */
- (BOOL)isEndpointSetup:(NSError **)error;

/**
 * Checks system and returns a list of OrigoKeysInfoType values.
 * @return An array of `OrigoKeysInfoType` values
 */
- (NSArray *)healthCheck;


/**
 * Returns the Origo API version on the form major.minor.maintenance.build, e.g. 4.0.0.123.
 */
- (NSString *)apiVersion;

#pragma mark Enforcement Policy
/**
 * This method can be used to verify that the organization admin enforce higher level of security for its end users to limit their usage of mobile app only when phone is in unlocked state.
  * @return - YES on enforcement policy enabled for endpoint level, NO on enforcement policy disabled for endpoint level

**/
- (BOOL)isDeviceEnforcementEnabled;


#pragma mark Seos API calls


- (NSArray<OrigoKeysKey *> *)listMobileKeys:(NSError **)error;

/**
 * This method will return one `OrigoKeysKey` object, representing the key that was last used to authenticate to a reader.
 * @param error - The cause of the failure, code is one of `OrigoKeysErrorCode.
 * @return Returns the last authenticated key object.
 * If there is no last authenticated key, this method will return nil.
 * @see OrigoKeysKey class
 */
- (OrigoKeysLastAuthenticationInfo *  _Nullable)lastAuthenticationInfo:(NSError **)error;

/**
 * Method to get information about the Seos Endpoint.
 * @param error - The cause of the failure, code is one of `OrigoKeysErrorCode`.
 * @return Returns information about the Endpoint
 * @see OrigoKeysEndpointInfo class
 */
- (OrigoKeysEndpointInfo *)endpointInfo:(NSError **)error;

#pragma mark Bluetooth API calls

/**
 * This method can be used to verify that the device supports BLE. The API will
 * query the Core Bluetooth system upon startup and this method will return NO if
 * the current device does not support Bluetooth Low Energy. This is a convenience method
 * to allow the application to query for BLE compatibility without having to implement
 * or initialize the Core Bluetooth layer.
 */
- (BOOL)deviceSupportsBluetoothLowEnergy;

/**
 * This method can be used to verify that the device has bluetooth turned on. The API will
 * query the Core Bluetooth system upon startup and this method will return NO if
 * the current device does not have Bluetooth turned on. This is a convenience method
 * to allow the application to query for BLE compatibility without having to implement
 * or initialize the Core Bluetooth layer.
 */
- (BOOL)deviceHasBluetoothTurnedOn;

/**
 * This method is used to connect to a specified reader. Valid
 * errors that may be reported are defined in the `NSError` class.
 *
 * - 401 One asynchronous method of the API is already running.
 * - 1101 The current list of allowed OpeningTypes did not contain the supplied OpeningType.
 *
 * @param reader - Reader that should be connected to, cannot be nil
 * @param openingType - OpeningType that should be used.
 * @param error - The cause of the failure, code is one of `OrigoKeysErrorCode`.

 */
- (void)connectToReader:(OrigoKeysReader *)reader openingType:(OrigoKeysOpeningType)openingType error:(NSError **)error;

/**
 * Tell the SDK to start scanning for readers in given `OrigokeysScanMode`. If the device is already scanning, this call will
 * first attempt to stop the current scan before starting the scan.
 * If the scan mode is OrigoKeysScanModeOptimizePerformance this
 * will enable the application to continue to run even if the screen is turned
 * off or the phone is locked.
 * Valid errors that may be reported are defined in the `NSError` class.
 *
 * Since the user must give permission to use Location Services, it is necessary for the Application to handle any error
 * reported by this method.
 *
 *  Include an array of the OpeningTypes you would like to be active.
 *
 * - 1001  CLBeaconRegion monitoring or ranging is not supported by this device
 * - 1002  Location services is not enabled in app project settings
 * - 1003  Location services is not authorized by user
 * - 1004  Location services authorization is not determined by user. iOS8 and above need to call `requestAlwaysAuthorization`
 * - 1102  The supplied configuration contained malformed OpeningTypes or no OpeningTypes at all
 * - 1103  OrigoKeysManager were unable to serve the request since Bluetooth Low Energy is unavailable
 *
 * @param scanMode - Describes in what mode to start scanning.
 * @param openingTypes - A set of OpeningTypes that the API should support.
 * @param error - The cause of the failure, code is one of `OrigoKeysErrorCode`.

 */
- (void)startReaderScanInMode:(OrigoKeysScanMode)scanMode supportedOpeningTypes:(NSArray *)openingTypes lockServiceCodes:(NSArray *)lockServiceCodes error:(NSError **)error;

/**
 * Stops scanning for readers

 */
- (void)stopReaderScan;

/**
 * Returns whether the API is currently scanning for readers or not. Please not that this method does not return the
 * current state of the Core Bluetooth scanning system, but the configuration of the OrigoKeysManager. Actual BLE scanning
 * may be turned on or off as the phone communicates with the Reader, but as long as this method returns @YES, the scanning should restart
 * when Reader communication has completed.

 */
- (BOOL)isScanning;

#pragma mark Reader Info Calls

/**
 * Returns an array of the active `-[OrigoKeysReader} objects from the
 * internal SDK database. If a Reader has not been seen in ten seconds, it is filtered out from the list.
 * @see `-[OrigoKeysReader}

 */
- (NSArray<OrigoKeysReader *> *)listReaders;

/**
 * Returns the closest `OrigoKeysReader]` object within range of the
 * specified `-[OrigoKeysReader OrigoKeysOpeningType]`. May return nil if there is no reader in range for the specified
 * `-[OrigoKeysReader#OrigoKeysOpeningType]`.
 * @param openingType - the specific `-[OrigoKeysReader#OrigoKeysOpeningType]` to look for

 */
- (OrigoKeysReader *  _Nullable)closestReaderWithinRangeOfOpeningType:(OrigoKeysOpeningType)openingType;


/**
 * Returns data for the specified `-[OrigokeysSeosTag]` on key with specified object identifier (OID). The OIDString is the keyId property of the `OrigoKeysKey`.
 *
 * @param oidString - OIDs of keys to get data from.
 * @param tag - `OrigoKeysSeosTag` to get data from.
 * @param error - Error object. Library will set this if an error occurs
 * @deprecated Use `OrigoKeysGetDataApduCommand` in Seos Access API instead
 * @version 2.0.0
 */
- (NSData *)dataForKeyOid:(NSString *)oidString tag:(OrigoKeysSeosTag *)tag error:(NSError **)error DEPRECATED_MSG_ATTRIBUTE("Use OrigoKeysGetDataApduCommand in Seos Access API instead");


/**
 * Returns an NSString representation of a One Time Password (OTP).
 * A new OTP is returned each time this method is called.
 *
 * @param key - a OrigoKeysKey
 * @param error - Error object. Library will set this if an error occurs.
 * @note since version 3.1.0
 */
- (NSString *)generateOTPForKey:(OrigoKeysKey *)key error:(NSError **)error;

/**
 * Returns the current counter value as a six character NSString (Numeral, 0-9). It is altered each time generateOTPForKey: is called
 *
 * @param key - a OrigoKeysKey
 * @param error - Error object. Library will set this if an error occurs.
 * @note since version 3.1.0
 */
- (NSUInteger)otpCounterForKey:(OrigoKeysKey *)key error:(NSError **)error;

/**
 * Saves data to specified tag on key with specified oid. The OIDString is the keyId property of the OrigoKeysKey.
 *
 * @param oidString - OIDs of keys to get data from.
 * @param tag - OrigoKeysSeosTag to get data from.
 * @param error - Error object. Library will set this if an error occurs.
 */
- (void)putData:(NSData *)data keyOid:(NSString *)oidString tag:(OrigoKeysSeosTag *)tag error:(NSError **)error DEPRECATED_MSG_ATTRIBUTE("Use OrigoKeysPutDataApduCommand in Seos Access API instead");

/**
 * Activate a Origo Key. This will mark the key as ACTIVE in the Seos Storage.
 * @return - YES on success, NO on failure
 * @param key - the OrigoKeysKey to activate
 * @error - If method returns NO, check the error.code for details
 */
- (BOOL)activateOrigoKey:(OrigoKeysKey *)key error:(NSError **)error;

/**
 * Deactivate a Origo Key. This will mark the key as INACTIVE in the Seos Storage. This means that the key will not
 * be visible to readers, and the key will no longer be selectable.
 * @return - YES on success, NO on failure
 * @param key - the OrigoKeysKey to deactivate
 * @error - If method returns NO, check the error.code for details
 */
- (BOOL)deactivateOrigoKey:(OrigoKeysKey *)key error:(NSError **)error;

/**
 * Use this method to access the default Seos provider. The default Seos Provider is the local soft storage instance of
 * Seos.
 * The current implementation of the OrigoKeysSeosProvider suffers from a few limitations:
 * It is recommended that you DO NO call any other Manager functions while the session is open, since these will
 * most likely fail. Seos will be unavailable for all other functions for the duration of the session, so it is
 * very important that you close the session when you're done.
 *  - Do not use the Provider to open a session while the OrigoKeysManager is scanning for readers
 *  - Do not use the OrigoKeysSeosProvider and the OrigoKeysManager methods at the same time
 * These limitation will be adressed in future versions of the SDK implementation.
 * @return the default Seos Provider
 * @note since version 5.0.0
 */
- (OrigoKeysSeosProvider *)defaultOrigoKeysSeosProvider;

/**
 * This method will trigger App Start event to mix panel.
 */
- (void)reportAppStartEvent;

///**
// * This method will trigger widget event to Mixpanel.
// */
//- (void)reportWidgetEvent:(OrigoKeysUnlockOpeningType)unlockType;

/**
 * New Property to identify the opening type for Mobile Widget ,Wearable and Twist and Go is available.
 */
@property (nonatomic) OrigoKeysUnlockOpeningType unlockOpeningType;

@end
NS_ASSUME_NONNULL_END
