//
//  ObjectConstant.swift
//  CohesionIB
//


import Foundation


class RoleAccessConstant {
    
    enum AppFeature : Int
    {
        case None = 0
        case CanViewUsers = 201
        case CanAddUser = 202
        case CanEditUser = 203
        case CanDeleteUser = 204

        case CanViewCompanies = 301
        case CanCreateCompany = 302
        case CanEditCompany = 303
        case CanDeleteCompany = 304
        case CanAssociteUserRoleToCompany = 305

        case CanViewRoles = 401
        case CanCreateEditRole = 402
        case CanDeleteRole = 403
        
        case CanViewVisits = 501 
        case CanViewVisitor = 502
        case CanAddEditDeleteVisitAndVistor = 503
        case CanCheckInVisitor = 504
        case CanManualCheckInVisitors = 505

        case CanAssignClearanceTocompany = 601
        case CanDownloadDigitalCredential = 602
        case CanRevokeDigitalCredential = 603
        case canSeeMobileKeycardInHomeScreen = 604

        case CanViewBookings = 901
        //case CanEditDeleteBooking = 902
        case CanCancelBookingWithOverwrite = 903
        case CanAddChargesToBooking = 904
        case canAddBooking      = 902
        case canEditBooking     = 906
        case canCancelBooking   = 907
        case canDeleteBooking   = 908

        case CanManageNotificationSettings = 801
        case CanManageMassNotification = 802
        case CanManageContactManagement = 803
        case CanSendMessagesToManagement = 804

        
        case CanAddEditDeleteBuildingModelParking = 1101
        case CanAssignUnassingParkingToCompanies = 1102
        case CanAssignUnassingReservedParkingToUsers = 1103
        case CanAssignUnassingUnreservedParkingToUsers = 1104
        case CanPurchaseUnsubscribeReserveParking = 1105
        case CanPurchaseUnsubscribeUnreserveParking = 1106
        case CanManageBikeRoomAccess = 1107
        case CanRequestBikeRoomAccess = 1108

        case CanViewServiceRequestsCreatedBy = 1201
        case CanAddUpdateServiceRequests = 1202
        case CanAddServiceRequestsForSpaceOccupiedBy = 1203
		case CanUpdateStatusAndAssignServiceRequests = 1206
        case CanAddServiceRequestTypesMarkedAdvanced = 1204
        case CanCancelDeleteServiceRequests = 1205
        case CanApproveDecline = 704
        case CanManageDocumentPermission = 1301

        case CanViewBasicIndoorAirQualityOverview = 1601 //Tenant User, visible screen that we already have
        case CanMonitorAndReceiveIndoorAirQualityAlerts = 1602 // Tenant manager and building manager, visible screen that we will create with drop down related to spaces and floors and this will override to first one if it is enable
        
        case CanAccessElevator = 1701 //Use can access Elevator
        
        case CanViewOccupancyLevel = 2002

    }
    enum AppModule : Int
    {
        case None = 0
        case Building = 1
        case User = 2
        case Company = 3
        case Role = 4
        case Visit = 5
        case BuildingSecurity = 6
        case MassNotification = 8
        case Booking = 9
        case Parking = 11
        case Service = 12
        case ManageAmenity = 7
        case Documents = 13
        case IAQ = 16
        case Elevator = 17
        case Occupancy = 20
    }
}

enum ViewBuildingEnum : Int
{
    case None = 0
    case MyBuilding = 1
    case AllBuilding = 2
}

enum CompanyRoleAssociationEnum : Int
{
    case None = 0
    case MyBuilding = 1
    case AllBuilding = 2
}

enum CreateUserEnum : Int
{
    case None = 0
    case MyBuilding = 1
    case AllBuilding = 2
}
enum UpdateUserEnum : Int
{
    case None = 0
    case MyBuilding = 1
    case AllBuilding = 2
}
enum UpdateUserProfileEnum : Int
{
    case None = 0
    case MyBuilding = 1
    case AllBuilding = 2
}
enum DeleteUserProfileEnum : Int
{
    case None = 0
    case MyBuilding = 1
    case AllBuilding = 2
}
enum ViewUsersEnum : Int
{
    case None = 0
    case MyBuilding = 1
    case AllBuilding = 2
}

enum ViewBookingEnum : Int
{
    case No = 0
    case MyBooking = 1
    case MyCompanyBooking = 2
    case AllCompanyBooking = 3
}

public enum AppVisitSubFeaturs : Int
{
    case None = 0
    case MyRecord = 1
    case MyCompanyRecord = 2
    case AllCompanyRecord = 3
}

public enum AppBuildingSecuritySubFeaturs : Int
{
    case Yes = 1
    case No = 0
}

public enum AppBookingSubFeaturs : Int
{
    case None = 0
    case MyRecord = 1
    case MyCompanyRecord = 2
    case AllCompanyRecord = 3
}

public enum AppEntityType : Int
{
    case User = 1
    case Building = 2
    case Amenities = 3
    case Tenant = 4
    case Client = 5
    case BuildingSpace = 6
    case Company = 7
    case Visitor = 8
    case ServiceRequest = 9
    case BuildingCalendar = 10
    case Document = 11


}

public enum MediaSize : Int
{
    case Default = 1
    case Small = 2
    case Medium = 4
    case Large = 8
    case ExtraLarge = 16
}

public enum MediaTag : String {
    case UserProfileImage = "UserProfileImage"
    case BuildingBannerImage = "BuildingBannerImage"
    case BuildingOtherImage = "BuildingOtherImage"
    case AmenityBannerImage = "AmenityBannerImage"
    case AmenityOtherImage = "AmenityOtherImage"
    case AmenityFurnitureImage = "AmenityFurnitureImage"
    case CompanyLogo = "CompanyLogo"
    case BuildingLeaseingContact = "BuildingLeasingContactImage"
    case BuildingManagedByContact = "BuildingManagedBy"
    case BuildingLogoImage = "BuildingLogoImage"
    case ServiceRequest = "ServiceRequest"
    case Documents = "Document"
    

}



