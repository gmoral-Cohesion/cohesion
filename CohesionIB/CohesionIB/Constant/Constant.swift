//
//  Constant.swift
//  CohesionIB

import Foundation

class Constant {
    static let embraceKey: String = {
        switch (Environment.target, Environment.deploy) {
        case (_ , .dev):
            return "ftdvX"
        case (.cohesionIb, .prod):
            return "a3rjh"
        case (.twHub, .prod):
            return "HM4mV"
        }
    }()
    
    static let heapKey: String = {
        switch Environment.deploy {
        case .dev:
            return "1952116361"
        case .prod:
            return "2876368687"
        }
    }()
    
    static let azureHubEndpoint: String = {
        switch (Environment.target, Environment.deploy) {
        case (.cohesionIb, .dev):
            return "Endpoint=sb://dev-cib-hub-ns-wi.servicebus.windows.net/;SharedAccessKeyName=DefaultListenSharedAccessSignature;SharedAccessKey=bSd29Aue/iE8OVN1n367S8qFmZzSQPgyJACIyaL6RvY="
        case (.cohesionIb, .prod):
            return "Endpoint=sb://core-notification-hub-namespace.servicebus.windows.net/;SharedAccessKeyName=DefaultListenSharedAccessSignature;SharedAccessKey=+n+Rvef8MbUUIlhS+rCNsIrxunBcsur46P/tgD+S2IY="
        case (.twHub, .dev):
            return "Endpoint=sb://dev-ns-core-transwestern.servicebus.windows.net/;SharedAccessKeyName=DefaultListenSharedAccessSignature;SharedAccessKey=LfjTg2Psm3wdyXgWqJVoQ1vdtGapehyteRchsorcXEA="
        case (.twHub, .prod):
            return "Endpoint=sb://transwstern-notification-hub-prod.servicebus.windows.net/;SharedAccessKeyName=DefaultListenSharedAccessSignature;SharedAccessKey=oAE2P7WYE2AZJR4l0o3bu4ihjim3jD/gcWwaWdiQEIc="
        }
    }()
    
    static let azureHubName: String = {
        switch (Environment.target, Environment.deploy) {
        case (.cohesionIb, .dev):
            return "dev-cib-hub-nothub-wi"
        case (.cohesionIb, .prod):
            return "core-notification-hub"
        case (.twHub, .dev):
            return "dev-core-transwestern"
        case (.twHub, .prod):
            return "transwestern-core-prod"
        }
    }()
    
    enum ReaderType : Int {
        case HID = 0
        case BlueDiamond = 1
    }
    
    static let APP_NAME: String = {
        switch Environment.target {
        case .twHub:
            return "TranswesternHub"
        case .cohesionIb:
            return "cohesion"
        }
    }()
    
    static let NavigationBarPlist   = "NavigationbarItems"
    static let Themejson   = "themedata"
    static let swiftybeaverLogFile  = "swiftybeaver.log"
    static let LeftItemsjson = "LeftItems"
    static let appDelegate = UIApplication.shared.delegate as! AppDelegate
    static let k_login = "Login"

    enum UIUserInterfaceIdiom : Int {
        case unspecified
        case phone
        case pad
    }
    
    struct ScreenSize {
        static let SCREEN_WIDTH         = UIScreen.main.bounds.size.width
        static let SCREEN_HEIGHT        = UIScreen.main.bounds.size.height
        static let SCREEN_MAX_LENGTH    = max(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
        static let SCREEN_MIN_LENGTH    = min(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
    }
    
    struct DeviceType {
        static let IS_IPHONE_4_OR_LESS  = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 480.0
        static let IS_IPHONE_5          = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 568.0
        static let IS_IPHONE_6          = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 667.0
        static let IS_IPHONE_6P         = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 736.0
        static let IS_IPAD              = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.SCREEN_MAX_LENGTH == 1024.0
    }

    //MARK: Acceptable character in textfield
    static let ACCEPTABLE_CHARACTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz "
    static let ACCEPTABLE_CHARACTERSWITHAPOSTROPHE = "'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz "
    static let ACCEPTABLE_ALPHANUMERIC = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz "
    static let ACCEPTABLE_NUMBERS = "0123456789"

    static var CreatEditUserName = ""
    
    static var selectedReader:ReaderType? {
        if let cardReaderSdk = SharedClass.sharedInstance.objBuildingConfig?.cardReaderSdk{
            if(cardReaderSdk == "BlueDiamond"){
                return ReaderType.BlueDiamond
            }
        }
        return ReaderType.HID
    }
    
    static var isBeaconRequired:Bool {
        if let requireBeacons = SharedClass.sharedInstance.objBuildingConfig?.requireBeacons{
            return (requireBeacons == "true")
        }
        return false
    }
    
    static var userId: String? {
        return userDataProvider.userId
    }
    
    static var user: LoginUser? {
        return userDataProvider.user
    }
    
    static var primaryColor:UIColor?{
        return UIColor(hexColor:SharedClass.sharedInstance.currentTheme?.primaryColor ?? "")
    }
    static var secondaryColor:UIColor?{
        return UIColor(hexColor:SharedClass.sharedInstance.currentTheme?.secondaryColor ?? "")
    }
    static var backgroundColor:UIColor?{
        return UIColor(hexColor:SharedClass.sharedInstance.currentTheme?.backgroundImgViewColor ?? "")
    }
    static var secondaryFontColor:UIColor?{
        return UIColor(hexColor:SharedClass.sharedInstance.currentTheme?.secondaryFontColor ?? "")
    }
    
    static var primaryFontColor:UIColor?{
        return UIColor(hexColor:SharedClass.sharedInstance.currentTheme?.primaryFontColor ?? "")
    }
    
    static var defaultPageSize = 10
    var hasTopNotch: Bool {
        if #available(iOS 11.0, tvOS 11.0, *) {
            return SharedClass.sharedInstance.getCurrentScene()?.safeAreaInsets.top ?? 0 > 20
        }
        return false
    }
    
    //MARK: 77West Wacker
    static var primaryColor77W: UIColor {
        return UIColor(displayP3Red: 0/255, green: 73/255, blue: 135/255, alpha: 1)
    }
    
    static var secondaryColor77W: UIColor {
        return UIColor(displayP3Red: 0/255, green: 113/255, blue: 187/255, alpha: 1)
    }
    
    static var tertiaryColor77W: UIColor {
        return UIColor(displayP3Red: 111/255, green: 176/255, blue: 199/255, alpha: 1)
    }
    
    static var primaryFontColor77W: UIColor {
        return UIColor(displayP3Red: 0/255, green: 73/255, blue: 135/255, alpha: 1)
    }
    
    static var accentColor:UIColor? {
        return UIColor(hexColor:SharedClass.sharedInstance.currentTheme?.accentColor ?? "")
    }
    
    @Injected private static var userDataProvider: UserDataProvider
}
