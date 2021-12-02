//
//  ObjectConstant.swift
//  CohesionIB
//


import Foundation


class ObjectConstant {
    
    
    // MARK:- LoginUserKeys
    
    enum LoginUserKeys : Int {
        case keyuserID,keyemail,keyuserImage,keyfirstName,keylastName,keyPhonecode,keyPhoneNo,keyUserCode,keyUserRole,keyUserGuid
        func toKey() -> String! {
            switch self {
            case .keyuserID:
                return "UserId"
            case .keyemail:
                return "Email"
            case .keyuserImage:
                return "profilepicturethumburl"
            case.keyfirstName:
                return "FirstName"
            case.keylastName:
                return "LastName"
            case.keyPhonecode:
                return "phoneCode"
            case.keyPhoneNo:
                return "ContactNo"
            case.keyUserCode:
                return "UserCode"
            case.keyUserRole:
                return "userRole"
            case.keyUserGuid:
                return "UserGuid"
            }
        }
    }
    
    //UserStatusType
    enum UserStatusType:Int {
        case Active = 0
        case Deleted = 1
        case All = 2
    }
  
    
    //recurringType
    enum RecurrVisitType:Int {
        case daily = 0
        case weekly = 1
        case monlty = 2
    }
    
    //hostType
    enum HostVisitType:Int {
        case visitor = 2
        case user = 1
    }
    
    
    //CheckInFilterTypes
    enum CheckInFilterType:Int {
        case Yes = 1
        case No = 2
    }
    
    //clearanceType

    enum ClearanceType:Int {
        case None = 0
        case Default = 1
        case Parking = 2
        case Visit = 4
        case BikeRoom = 8
    }
    
    //credentialType

    enum CredentialType:Int {
        case ICLASSSEOS = 1
        case AccessCard = 2
        case UserBadge = 3
    }
    
    //CardParamsType
    enum CardParamsType:Int {
        case Visit = 1
    }
    
    
    // MassNotificationPriority

    enum MassNotificationPriority:Int {
        case High = 1
        case Normal = 2
    }
    
    
    // EnumUserPreferenceType
    
    enum UserPreferenceType:Int {
        case Email = 1
        case PhoneNumber = 2
    }
    
    // NotificationDelivery
    
    enum NotificationDelivery:Int {
        case Mobile = 1
        case TextMessage = 2
        case Email = 4
        case VoiceCall = 8
        case None = 0
    }
    
    
    // NotificationGroupIconType
    
    enum NotificationGroupIconType:Int {
        case MassNotification = 1
        case UserNotification = 2
        case RoleNotification = 3
        case VisitNotification = 4
        case InvitationNotification = 5
        case CompanyNotification = 6
        case BookingNotification = 7
        case IAQ = 13
    }
    
    
    // AmenityBookingStatus
    enum BookingStatus:Int {
        case Booked = 1
        case InProgress = 2
        case Completed = 4
        case Cancelled = 8
        case PendingApproval = 16
        case Decline = 32
        
    }
    
    // BookingCancellationType
    enum BookingCancellationType:Int {
        case NoCancellation = 0
        case Percantage = 1
        case USD = 2
    }
    
    // BookingTimeDurationType
    enum BookingTimeDurationType:Int {
        case UpcomingBookings = 1
        case PastBookings = 2
        case Custom = 3
        case AllBookings = 4
    }
    
    // AmenityBookingStatusColor
    enum BookingStatusColor:String {
        case Green = "#66CD00" //Booked
        case Orange = "#ff9900" //InProgress
        case Red = "#ff0000" //Cancelled
        case Black = "#003300" //Completed
    }
    
    // UserStatusColor
    enum UsertatusColor:String {
        case Deleted = "#ff0000" //Deleted
    }
    
    // AmenityBookingPaymentStatus
    enum AmenityBookingPaymentStatus:Int {
        case BalanceDue = 1
        case Paid = 2
        case Null = 4
        case OnHold = 8
    }
  
    // AmenityBookingDayHours

    enum AmenityBookingDayHours:Int {
        case Sunday = 1
        case Monday = 2
        case Tuesday = 3
        case Wednesday = 4
        case Thursday = 5
        case Friday = 6
        case Saturday = 7
    }
    
    // AmenityCancellationChargesTypeEnum
    
    enum AmenityCancellationChargesType:Int {
        case Percentage = 1
        case Fixed = 2
    }
    
    // BookingTotalType

    enum BookingTotalType:Int {
        case SubTotal = 1
        case Total = 2
    }
 
    // use for coding level not server
    enum CreateMassCategory:Int {
        case Send = 1
        case Save = 2
    }
    
    enum MassNotificaionDetailType:Int {
        case template = 1
        case notification = 2
    }
    
    enum MASS_CATEGORY : Int {
        case Announcement = 1
        case Event
        case Emergency
        case Advertisement
    }

    enum WebviewType : Int {
        case Terms = 1
        case Privacy = 2
        case NewsResearch = 3

    }
    
    // ACHAccountHolderType
    enum ACHAccountHolderType:Int {
        case Individual = 1
        case Company = 2
    }
    
    
    static let moduleValue = "moduleValue"
    static let featureList = "featureList"

}
