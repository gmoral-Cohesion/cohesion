//
//  KeyConstants.swift
//  CohesionIB


import UIKit

class KeyConstants {
    
    // MARK:- Menu Enums
    
    enum menuItem : String {
        case Home  =  "Home"
        case Amenities = "Amenities"
        case Parking = "Parking"
    }
   
    static let visitorEmail = "cohesionib.com"
    static let userBadge = "UserBadge"
    static let HIDNumber = "ICLASSSEOS"

    static let badge_MAXLENGTH = 24//6
    
    static let notAllowedCharacters = " ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_";
    
    static let deleteRedColor = "#ec1414"
    
    // For User Status
    static let userStatusArray = [(type: ObjectConstant.UserStatusType.Active, name: "Active"),
                                  (type: ObjectConstant.UserStatusType.Deleted, name: "Deleted")]
    
    // For Create Mass Notification
    static let priorityArray:Array<Any> = [["id":ObjectConstant.MassNotificationPriority.High.rawValue,"value":"High"],["id":ObjectConstant.MassNotificationPriority.Normal.rawValue,"value":"Normal"]]
    
    // For Amenity Booking
    static let bookingStatusArray:Array<Any> = [["id":ObjectConstant.BookingStatus.Booked.rawValue,"value":"Reserved"],["id":ObjectConstant.BookingStatus.InProgress.rawValue,"value":"In Progress"],["id":ObjectConstant.BookingStatus.Completed.rawValue,"value":"Completed"],["id":ObjectConstant.BookingStatus.Cancelled.rawValue,"value":"Cancelled"], ["id":ObjectConstant.BookingStatus.PendingApproval.rawValue,"value":"Pending Approval"], ["id":ObjectConstant.BookingStatus.Decline.rawValue,"value":"Declined"]]
    
    static let paymentStatusArray:Array<Any> = [["id":ObjectConstant.AmenityBookingPaymentStatus.BalanceDue.rawValue,"value":"Balance Due"],["id":ObjectConstant.AmenityBookingPaymentStatus.Paid.rawValue,"value":"Paid"], ["id":ObjectConstant.AmenityBookingPaymentStatus.OnHold.rawValue,"value":"OnHold"]]

     static let achAccountTypeArray:Array<Any> = [["id":ObjectConstant.ACHAccountHolderType.Individual.rawValue,"value":"individual"],["id":ObjectConstant.ACHAccountHolderType.Company.rawValue,"value":"company"]]
    
    // For Visitor CheckIn
    static let checkInStatusArray:Array<Any> = [["id":ObjectConstant.CheckInFilterType.Yes.rawValue,"value":"Yes"],["id":ObjectConstant.CheckInFilterType.No.rawValue,"value":"No"]]
    
    static let COUNTRY_CODE = "91"
    
    static let maximumFacilityDisplay = 9
    
    // Stripe Key
    static let Stripe_Payment_SANDBOX_KEY = "pk_test_9lJ2LiqzAz57j2zrqSBRGrG6"
}

enum HID : Int {
    case START_UP = 1
    case START_COMPLETE
    case SETUP_ENDPOINT
    case SETUP_ENDPOINT_COMPLETED
    case UPDATE_ENDPOINT
    case UPDATE_ENDPOINT_COMPLETED
    case GENERATE_MOBILE_KEY
    case START_SCAN
    case STOP_SCAN
}
