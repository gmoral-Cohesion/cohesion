//
//  MessageConstant.swift
//  CohesionIB

import UIKit
class MessageConstant
{
    struct Log {
        static let appStarted = "Application is starting."
    }
	
	//	these strings are used for the details tables in the visit and visitor screens
	
	struct visitorDetailTitles {
		static let email = "Email"
		static let company = "Company"
		static let phonenumber = "Phone Number"
		static let badgeid = "User Badge"
	}

	struct visitDetailTitles {
		static let date = "Date"
		static let time = "Time"
		static let frequency = "Frequency"
		static let until = "Until"
		
		static let company = "Company"
		static let host = "Host"
		static let createdBy = "Created By"
		static let subject = "Subject"
		static let location = "Location"
		static let clearance = "Clearance"
		static let clearances = "Clearances"

		static let visitor = "Visitor"
		static let visitors = "Visitors"
		static let arrivalList = "Notifications"
	}
	
	//	these titles can be the bottom UILabel in a UIVStack which is the navigation bar title
	//	or they csan be in the label which is just below the navigation bar
	
	struct screenTitle {
		static let edita = "Edit a"
		static let submita = "Submit a"

		static let reservean = "Reserve an"
		static let updatean = "Update an"

		static let serviceRequest = "Service Request"
		static let serviceRequests = "Service Requests"

		static let amenity = "Amenity"
		static let maintenance = "Maintenance"
		static let building = "Building"
		static let conversation = "Conversation"
		static let visit = "Visit"
		static let visitdetails = "Visit Details"
		static let visitordetails = "Visitor Details"
		static let visitor = "Visitor"
		static let adda = "Add a"
		static let amenities = "Amenities"
		
		static let viewAll = "View All"
		
		static let buildingNotice = "Building Notice"
		static let event = "Event"
		static let promotion = "Promotion"
	}
	
	struct dayOfWeek {
		static let monday = "Monday"
		static let tuesday = "Tuesday"
		static let wednesday = "Wednesday"
		static let thursday = "Thursday"
		static let friday = "Friday"
		static let saturday = "Saturday"
		static let sunday = "Sunday"
	}
	
	struct frequency {
		static let repeated = "Repeated"
		static let until = "Until"
		static let forever = "Forever"
		static let never = "Never"
        static let oneTime = SharedClass.sharedInstance.isFraserBuilding() ? "One time" : "One Time"
		
		static let everyDay = "Every Day"
		static let everyWeek = "Every Week"
		static let everyMonth = "Every Month"
		static let everyYear = "Every Year"
				
		static let every = "Every"

		static let daily = "Daily"
		static let weekly = "Weekly"
		static let monthly = "Monthly"
		static let yearly = "Yearly"
		
		static let first = "First"
		static let second = "Second"
		static let third = "Third"
		static let fourth = "Fourth"
		static let fifth = "Fifth"
		
		static let days = "Days"
		static let weeks = "Weeks"
		static let months = "Months"
		static let years = "Years"
		
		static let every10Days = "Every 10 Days"
		static let every10Weeks = "Every 10 Weeks"
		static let every10Months = "Every 10 Months"
		static let every12Months = "Every 12 Months"
		static let every10Years = "Every 10 Years"
	}
	
	struct label {
		static let noAttachments = "No Attachments"
		static let attachments = "Attachments"
        static let scanDigitalKeycard = "Scan Mobile Keycard"
        static let configureDigitalKeycard = "Configure Mobile Keycard"
	}
	
	struct misc {
		static let unknwon = "Unknown"
		static let endDateUnknown = "End Date Unknown"
		static let onThe = "On The"
		static let on = "On"
	}
		
	struct srTitles {
		static let subject = "Subject"
		static let status = "Status"
		static let space = "Space"
		static let type = "Type"
		static let subtype = "Subtype"
		static let description = "Description"
		static let frequency = "Frequency"
		static let created = "Created"
	}

	struct action {
		static let commentAdded = "Comment Added"
		static let statusChanged = "Status Changed"
		static let updated = "Updated"
		static let created = "Created"
		static let serviceRequestCreated = "Service Request Created"
		static let attachmentAdded = "Attachment Added"
	}
	
    struct validationMessage {
        static let emptyPhoneNumber = "Phone number field is empty"
        static let accessModuleDenied      = "You do not have access to that feature"
        static let blankEmail      = "That email address was invalid.  Please try again."
        static let blankPassword   = "That password was invalid.  Please try again. "
        static let invalidEmail    = "That email address was invalid.  Please try again."
        static let invalidCurrentPassword    = "That password was invalid.  Please try again. "
        static let invalidNewPassword    = "Please make sure your new password meets the security requirements and matches in both fields"
        
        static let UNAUTHORIZED_USER = "You do not have permission required for that action."
        static let INVALID_USERNAME_PASSWORD = "Your email or password was invalid. Please try again or contact your office supervisor or building supervisor to reset your account."
        static let OPERATIONAL_ERROR = "This error code means the server is not responding. Please try again later."
        static let NO_GATEWAY = "This error means no payment gateway set for this building."
        static let NO_CONTENT = "The data the server was supposed to send was not found. Please try again and contact Support@cohesionib.com if unsuccesful."
        static let NO_AMENITY = "No Amenity is available."
        static let addVisitorValidate = "Please add Visitor"
        static let moreThanFiveContinousDayError = "Recurring visits cannot exceed 5 consecutive days"
        static let addHostValidate = "Please add Host"
        static let cardAlreadyAssigned = "Badge number already exists"
        
        //KEYCARD ALERT
        static let ROBOT_ALERT = """
Our robots are hard at work setting up your digital keycard.

It should just take a few more moments!
"""
        static let LENEL_AUTHORIZATION_CODE_ALERT = "To configure your keycard, please enter the authorization code that your building should have been emailed you."
        static let SUCCESS_KEYCARD_ALERT = "You’re all set to start using your Digital Keycard."
        static let FAILURE_KEYCARD_ALERT = """
    We’ve run into some issues, please try again.

    If the problem persists, please contact building management.
    """
        
        static let ASK_PERMISSION_ALERT_BLUETOOTH = "Turn on Bluetooth to enable your digital keycard."
        static let ASK_PERMISSION_ALERT_LOCATION = "Turn on Location Sharing to enable your digital keycard."
        static let ASK_PERMISSION_ALERT = "Turn on Bluetooth and Location Sharing to enable your digital keycard."
        static let ASK_PERMISSION_ALERT_INITIAL = """
Turn on Bluetooth and Location Sharing to enable your digital keycard.

This will allow you to tap your phone on card readers for building access - even without opening the cohesion app.
"""

    
        
        //HID MEssage
        static let HID_CREDENTIAL_EXISTS = "Only one mobile credential is permitted per user, and our records indicate that you already have one.  If you continue, your old credential will be deleted and replaced by the credential on this device!  Do you wish to continue?"

        static let HID_REGISTER_FAIL = "The register for your digital access credential failed. Please try again and contact Support@cohesionib.com if unsuccesful."
        static  let HID_SERVER_INVITATION_NOT_RECEIVED = "The invitation code for your digital access credential was not received. Please try again and contact Support@cohesionib.com if unsuccesful. "
        static let HID_ENDPOINT_SETUP_FAIL = "The endpoint setup for your digital access credential failed. Please try again and contact Support@cohesionib.com if unsuccesful."
        static  let HID_ENDPOINT_UPDATE_FIAL = "The endpoint update for your digital access credential failed.  Please try again and contact Support@cohesionib.com if unsuccesful."
        static  let HID_SERVER_ENDPOINT_UPDATE_FAIL = "The endpoint update for your digital access credential failed. Please try again and contact Support@cohesionib.com if unsuccesful."
        static  let HID_END_POINT_NOT_PERSONALIZE = "Endpoint not personalized"
        static  let HID_SERVER_ISSUE_MOBILEID_FAIL = "The issuance of your digital access credential failed. What matters most is that neither of us are to blame. Please try again and contact Support@cohesionib.com if unsuccessful."
        static  let HID_ISSUE_MOBILEID_FAIL = "The issuance of your digital access credential failed.  Please try again and contact Support@cohesionib.com if unsuccesful."
        static  let HID_ENPOINT_CONFLICT = "There are conflicts in digital access credential configuration. What matters most is that neither of us are to blame. Please try again and contact Support@cohesionib.com if unsuccessful."
        static let HID_MOBILEID_REVOLKED = "Your digital access credential has been revoked.  Please contact Support@cohesionib.com."
        static let HID_MOBILEID_REVOKE_FAILED = "Your digital access credential could not able to revoke.  Please contact Support@cohesionib.com."
        
        static let HID_CONFIRMATION_ALERT = "Do you want to add a digital keycard to this device?"
        static let BLUETOOTH_NOT_SUPPORTED = "Device doesn't support Bluetooth "
        static let BLUETOOTH_OFF = "Please turn on Bluetooth to start scanning"
        static let BLUETOOTH_OFF_BEACONS = "Please turn on Bluetooth to unlock nearby doors and call elevators"

        static let bookingCreated = "Reservation created"
        static let bookingCancelled = "Reservation canceled"
        
        static let submitSRMissingInfoTitle = "Missing Information"
		static let submitSRMissingInfo = "Please enter a description and select type, sub-type, and location before continuing"
		static let submitSRMissingSubtypeDescription = "Please enter a description for the sub-type before continuing"
        
        //Card Info
        
        static let CARD_INFO_DELETE = "Are you sure you want to remove this credit card?"
        static  let CARD_INFO_DELETE_ACH = "Are you sure you want to remove this ACH detail?"
        
        static  let CARD_INFO_DELETE_SUCCESS = "Credit card removed successfully"
        static   let ACH_ACCOUNT_DELETE_SUCCESS = "ACH account removed successfully"
        static  let ACH_ACCOUNT_UPDATE_SUCCESS = "ACH account updated successfully"
        
        static   let CARD_INFO_UPDATED_SUCCESS = "Credit card updated successfully"
        static    let CARD_INFO_ADDED_SUCCESS = "Credit card added successfully"
        static    let CARD_INFO_EXPIRY_MONTH = "Please enter expiration month"
        static    let CARD_INFO_EXPIRY_YEAR = "Please enter expiration year"
        static   let CARD_INFO_ENTER_VALID_CARD_DETAILS = "Please enter valid credit card details"
        static    let CARD_INFO_ENTER_NAME = "Please enter name"
        static    let ACH_ENTER_TYPE = "Please select account holder type"
        static    let ACH_ENTER_ROUTING_NUMBER = "Please enter routing number"
        static     let ACH_ENTER_ACCOUNT_NUMBER = "Please enter account number"
        static     let ACH_ENTER_ADDED_SUCCESS = "Bank account added successfully"
        static     let ACH_SELECT_ACCOUNT = "Please select ACH account"
        
        static    let CARD_INFO_ENTER_CARD_NO = "Please enter credit card number"
        static     let CARD_INFO_ENTER_CARD_YEAR_VALIDATE = "Credit card expiration year should not be less than"
        static    let CARD_INFO_ENTER_CARD_MONTH_YEAR_VALIDATE = "You entered a date in the past. I’m not THAT good."
        static let UNASSIGN_PARKING_SPOT = "Are you sure you want to unassign this parking spot?"
        static let UNSUBSCRIBE_PARKING_SPOT = "Are you sure you want to unsubscribe from this parking spot?"
        static let VEHICLE_DELETE = "Are you sure you want to remove this vehicle?"
        static let VEHICLE_VALIDATION = "Please fill in all required fields"
        
        //Blue Diamond - errors/alerts
        static let BLUEDIAMOND_AUTHORIZE_FAILED = "Blue Diamond configuration failed. Try again."
        static let NEW_VERSION_AVAILABLE = "Please update your app to the latest version to continue"

    }
    
    struct commonMessage {
        static let noDataFound = "This error code means the data the server was supposed to send was not found. Please try again and contact Support@cohesionib.com if unsuccesful."
        static let unKnownError = "The server is reporting an unknown error. Please try again and contact Support@cohesionib.com if unsuccesful."
        static let tokenExpire = "Your digital credential appears to have expired. Please contact your office supervisor or building management."
        static let notAuthorized = "This error code means your role doesn't authorize what you are trying to do."
        static let authError   = "The server is saying you aren't authorized to do that."
        static let alreadyExistMessage = "The record you are trying to create already exists."
        static let itemNotAvailable = "I can’t seem to find the item you requested. It might have been deleted, or something else might have happened that was not my fault."
        
        static let changePassword_Success = "Password changed successfully"
        static let forgotPassword_Success = "Temporary password has been successfully sent to "
        
        static let interConn   = "Make sure your network is connected to the internet."
        
        static let logoutMessage = "Are you sure you want to logout?"
        static let workInProgress      = "Under Development"
        static let visitor_Added  = "Visitor added successfully"
        static let visitor_Updated  = "Visitor updated successfully"
        static let visitor_Deleted = "Visitor deleted successfully"
        static let visitor_has_upcoming_visit = "I can't delete this visitor, because there are future visits scheduled. I’ll tell them how you feel, though."
        static let visitor_checkIn  = "Visitor checked-in successfully"
        
        static let user_Deleted = "User deleted successfully"
        static let user_Restored = "User restored successfully"
        
        static let visitor_confirm_deleted = "Are you sure you want to delete this visitor?"
        static let notifyUser_confirm_deleted = "Are you sure you want to delete this user?"
        static let user_confirm_deleted = "Are you sure you want to delete this user?"
        static let visitor_confirm_deleted_badge = "Are you sure you want to delete this user badge?"
        
        static let user_confirm_restored = "Are you sure you want to restore this user?"
        
        static let building_confirm_switch = "Are you sure you want to switch from this building?"
        
        static let visit_deleted = "Are you sure you want to cancel this visit?"
        static let visit_deleted_success = "Visit canceled successfully"
        
        static let visitCreated = "Your visit has been created"
        static let visitUpdated = "Visit updated successfully"
        
        static let userCreated = "User created successfully"
        static let userUpdated = "User information updated successfully"
        static let userProfileUpdated = "User profile updated successfully"
        
        static let user_badge_Deleted = "User badge deleted successfully"
        
        static let NO_CAMERA_AVAILABLE = "No camera available"
        
        static let notificationCreated = "Mass notification created successfully"
        static let notificationUpdated = "Mass notification updated successfully"
        static let notificationDeleted = "Mass notification deleted successfully"
        static let mass_confirm_deleted = "Are you sure you want to delete this notification?"
        
        static let template_deleted_success = "Template deleted successfully"
        
        static let template_deletedConfirm = "Are you sure you want to delete this template?"
        
        static let notificationSettingsUpdated = "Settings updated successfully"
        
        static let bookingCreated = "Amenity request has been submitted"
        static let bookingUpdated = "Reservation updated successfully"
        static let bookingisApprovedMessage = "Your reservation request has been submitted."
        
        static let media_confirm_deleted = "Are you sure you want to remove your profile picture?"
        static let bookingchargeCreated = "Amenity charge added successfully"
        static let bookingchargeUpdated = "Amenity charge updated successfully"
        static let MediaDeleteSuccessFully = "Profile picture deleted successfully"
        static let BookingCancelSuccessFully = "Reservation canceled successfully"
        static let booking_cancelled = "Are you sure you want to cancel this reservation?"
        
        static let charge_confirm_deleted = "Are you sure you want to delete this additional charge?"
        static let charge_Deleted = "Amenity charge deleted successfully"
        
        static let cardAdded = "Credit card added successfully"
        static let cardUpdated = "Credit card updated successfully"
        
        static let digitalCred_confirm_deleted = "Are you sure you want to remove this digital access credential?"
        static let digitalCred_Deleted = "Digital access credential deleted successfully"
        
        
        static let serviceRequestCreatedSuccessfully = "Your service request has been submitted"
        static let failToSelectSubject = "Please enter the subject"
        static let failToSelectDescription = "Please enter the description"
        static let failToSelectCompany = "Please select the company"
        static let failToSelectLocation = "Please select the location"
        static let failToSelectRequestor = "Please select the Requestor"
        static let attachedSuccessfully = "File attached successfully"
        static let typeFailure = "Please Select the Type"
        static let subTypeFailure = "Please Select the SubType"
        static let priorityFailure = "Please Select the Priority"
        static let serviceUpdatedSuccessfully = "Service request updated successfully"
        static let noContent = "No contents"
        static let deleteMessageAttachment = "Attachment deleted successfully"
        static let noSpaceZones = "No SpacesZones available"
        static let Favorite = "Favorite"
        static let  unFavorite = "Unfavorite"
        static let Delete = "Delete"
        static let Download = "Download"
        static let EnterFolderName = "Please enter a folder name"
        
        static let NoRecentNotifications = "You have no recent building notifications."
        
        static let NoOutstandingRequests = "You have no outstanding service requests"
        static let NoRecentMassNotifications = "You have no recent notifications"
        static let NoUpcomingVisits = "You have no upcoming visits"
        
        static let PrivacyReadAndAgree = "I have read and agree to the Privacy Policy and Terms of Use that govern my use of this software."
        static let PrivacyReadAndAgreeWarning = "Please agree to the Privacy Policy and Terms of Use"
        
        static let  DeleteUsersBikeRoom = "Are you sure you want to remove this user’s access to the \(SharedClass.sharedInstance.headerTitle ?? "bike room")?"
        static let  AutoReplyMessage = "Thank you for your message! We will get back to you within 24 hours. If this is urgent, please call (312) 730-2407."
        static let CommonAreaAccessOnly = "Common Area Access Only"
        static let HoldInLobby = "Hold in Lobby"
        static let GrantVisitorAcess = "Grant Visitor(s) Access to Floor(s)"
        static let WelcomeMessage = "Welcome to the building"
        static let LeavingMessage = "You are leaving the building"
        
        static let bookingError = "Error while payment for amenity booking"
        static let paymentSuccess = "Payment have been done successfully."
        
        static let requiredFieldBlank = "Payment details required."
    }
    
    struct IllustrationMessage {
        static let ALERT_KEYCARD = """
Here are some tips on how to use your new digital keycard.

Please do not navigate away from this screen, or you will have to start the configuration over.
"""
        static let ALERT_PHONETAP = """
This digital keycard works just like your physical one - just tap your phone on a card reader to gain building access!

You will be limited to the building areas that you previously had access to.
"""
        
        static let ALERT_LOCATION = """
If you have Location Sharing set to ‘Always’, you don’t need to have the cohesion app open to use your digital keycard!

Tap your phone at a reader, regardless of whether the app is open or not.
"""
        
        static let ALERT_BLUETOOTH = """
While it may seem like magic, your phone actually talks with the card reader using Bluetooth.
            
If you have issues with your mobile keycard in the future, confirm that your Bluetooth is turned on.
"""
    }
    
    struct commonButtonTitle {
        static let ok = "OK"
        static let yes = "Yes"
        static let no = "No"
        static let delete = "Delete"
        static let restore = "Restore"
        static let cancel = "Cancel"
        static let noThanks = "No Thanks"
		static let submit = "Submit"
		static let update = "Update"
		static let next = "Next >"
        static let tryAgain = "Try Again"
    }
    
    struct NotificationIdentifier {
        static let pushReceived = "pushReceived"
    }
}
