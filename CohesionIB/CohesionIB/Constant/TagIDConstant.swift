//
//  TagIDConstant.swift
//  CohesionIB
//
import UIKit

enum Tag :Int {
    case HOME = 1
    case AMINITIES = 6
    case BOOKINGS = 123
    case VISITOR_MANAGEMENT = 5
    //case SERVICE_REQUESTS = 25
    case BUILDING_CONTROLS = 26
    case COMMUNICATIONS = 11 //Mass notificatioin
    case USER_MANAGEMENT = 21
    case COMPANIES = 34
    case BUILDING_INFO = 13
    case SETTINGS = 23
    case SERVICEREQUEST = 15
    case SERVICEREQUESTCREATE = 33
    case PARKING = 16
    case BUILDINGINFO = 52
    case DEMO = 100
    case BOOKING_CALENDAR = 4
    case COMMUNICATION_PORTAL = 10
    case DOCUMENT = 20
    case TRANSIT = 29
    case COMMUNITY = 2
    case OPERATIONS = 14
    case INSIGHT = 22
    case NEARBY = 3
    case IAQ = 35
    
    // SUBMENUS
    case AMINITY_LIST = 7
    case AMINITY_RESERVATIONS = 9 //Reservation list
    case NOTIFICATION_SETTINGS = 30
    case PRIVACY_POLICY = 31
    case TERMS_OF_SERVICE = 32
    case ABOUT_US = 314
    case PARKING_ASSIGN = 17
    case PARKING_PURCHASE = 18
    case CONTACT_MANAGEMENT = 12
    case BIKE_ROOM_PARKING = 19
    case APP_VERSION = 28
    case AVAILABILITY_CALENDAR = 8
    case WEBVIEW = 999
    case KEYCARD = 36//9999
    case Elevator = 37//99999
    case Fitness = 38
    
    case WEBVIEW_CAROUSAL = 0
    case WEBVIEW_DINE = 2000

}

class TagIDConstant  {
    struct cellIDs {
        static let BuildingListCell = "BuildingListCell"
        static let LeftViewCell = "LeftMenuTableCell"
        static let BuildingCollectionViewCell = "BuildingCollectionViewCell"
        static let AmenityCollectionViewCell = "AmenityCollectionViewCell"
        
        //LeftCell Sub TitleCell
        static let HeaderCell = "HeaderCell"
        
        //AmenityDetail CollectionCell
        static let FeaturesCollectionCell = "FeaturesCollectionCell"
        static let BannerCollectionCell = "BannerCollectionCell"
        
        
        //Media CollectonCell
        static let MediaPhotoCustomCell = "MediaPhotoCustomCell"
        static let MediaVideoCustomCell = "MediaVideoCustomCell"
        
        //User management
        static let UserListCell = "UserListCell"
        static let CustomSwitchCell = "CustomSwitchCell"
        static let CustomDropBoxCell = "CustomDropBoxCell"
        static let MyProfileBuildingWithAccessRole = "MyProfileBuildingWithAccessRole"
        
        //Visit management
        static let TabBarCollectionViewCell = "TabBarCollectionViewCell"
        static let UpcomingVisitListCell = "UpcomingVisitListCell"
        static let VisitorListCell = "VisitorListCell"
        static let AddVisitorNotificationTableViewCell = "AddVisitorNotificationTableViewCell"
        static let VisitorAddedCollectionCell = "VisitorAddedCollectionCell"
        static let AddVisitorCollectionViewCell = "AddVisitorCollectionViewCell"
        static let UpcomingVisitorListCell = "UpcomingVisitorListCell"
        static let VisitorDirectoryCustomCell = "VisitorDirectoryCustomCell"
        
        // Search
        static let UserSearchTableViewCell = "UserSearchTableViewCell"
        static let CheckmarkCollectionViewCell = "CheckmarkCollectionViewCell"
        static let RadioCollectionViewCell = "RadioCollectionViewCell"
        
        static let AccessCardBadgeCell = "AccessCardBadgeCell"
        static let AccessCardHIDCell = "AccessCardHIDCell"
        static let AccessCardVisitCell = "AccessCardVisitCell"
        static let AccessVisitCardCCell = "AccessVisitCardCCell"
        
        //Notification
        static let NotificationCustomCell = "NotificationCustomCell"
        static let MassNotificationCustomCell = "MassNotificationCustomCell"
        static let UNEventCell = "UNEventCell"
        
        //Building
        static let FactsFigureTableCell = "FactsFigureTableCell"
        
        //Clearance
        static let CheckMarkTableViewCell = "CheckMarkTableViewCell"
        static let AmenitiesCollectionCell = "AmenitiesCollectionCell"
        static let LeasingContactCustomCell = "LeasingContactCustomCell"
        static let TransportCustomCell = "TransportCustomCell"
        static let BuildingTenantCustomCell = "BuildingTenantCustomCell"
        static let NewsReseachCustomCell = "NewsReseachCustomCell"
        static let BuildingListTableViewCell = "BuildingListTableViewCell"
        
        // Booking
        static let BookingListCell = "BookingListCell"
        static let NewBookingListCell = "NewBookingListCell"
        static let NoteListCell = "NoteListCell"
        static let AddChargeCell = "AddChargeCell"
        static let AmenityRateCell = "AmenityRateCell"
        static let AmenityHoursCell = "AmenityHoursCell"
        static let AmenityChargesSummary = "AmenityChargesSummary"
        static let AmenityChargesSummaryTotal = "AmenityChargesSummaryTotal"
        
        //Payment
        static let CreditCardListCell = "CreditCardListCell"
        static let CreditCardSelectionCell = "CreditCardSelectionCell"
        static let ACHListCell = "ACHListCell"
        static let ACHSelectionCell = "ACHSelectionCell"
        
        //Location
        static let LocationCell = "LocationCell"
        static let TypesCell = "TypesCell"
        
        //Repeat Request
        static let RepeatCell = "RepeateRequestCell"
        static let GapCell = "GapCell"
        static let RepeatRequestDurationCell = "RepeatRequestDurationCell"
        
        //Service Request
        static let AttachementListCell = "AttachementListCell"
        static let FavouriteCell = "FavouriteCell"
        
        //IAQ
        
        static let IAQBannerTableViewCell = "IAQBannerTableViewCell"
        static let IAQInfoTableViewCell = "IAQInfoTableViewCell"
        static let IAQBuildingInfoTableViewCell = "IAQBuildingInfoTableViewCell"
        
        static let AccessPassCell = "AccessPassCell"
        static let AccessPassCardCell = "AccessPassCardCell"
        static let cardHeaderCollectionView = "CardHeaderCollectionView"
        static let AddNewCell = "AddNewCell"
        
        //Home2
        static let HomeActionCell = "HomeActionCell"
        static let EventPromotionUpcomingCell = "EventPromotionUpcomingCell"
    }
    
    struct nibs {
        static let CBPickerView = "CBPickerView"
        static let CBDatePickerView = "CBDatePickerView"
        static let CBSearchView = "SearchView"
        static let CBSlideView = "SlideView"
        static let UNHeaderView = "UNHeaderView"
        static let LeftHeaderView = "LeftHeaderView"
        static let BuildingHeaderView = "BuildingHeaderView"
        static let BuildingNewsResearchHeaderView = "BuildingNewsResearchHeaderView"
        static let AmenityRateHeaderView = "AmenityRateHeaderView"
        static let AmenityHourHeaderView = "AmenityHourHeaderView"
    }
    
    struct Tags {
        static let kGradientView = 1000
    }
    
    //ViewController Class instances
    static func loginViewController() -> UIViewController {
        return LoginViewController()
    }
    
    static func buildingListViewController() -> UIViewController  {
        let objBuildingListViewController = AppStoryboard.Login
            .viewController(viewControllerClass:BuildingListViewController.self)
        return objBuildingListViewController
    }
    
    static func changePasswordViewCon() -> UIViewController  {
        let objBuildingListViewController = AppStoryboard.Login
            .viewController(viewControllerClass:ChangePasswordViewCon.self)
        return objBuildingListViewController
    }
    
    static func leftMenuViewController() -> UIViewController {
        let objLeftMenuViewController = AppStoryboard.Dashboard
            .viewController(viewControllerClass:LeftMenuViewController.self)
        return objLeftMenuViewController
    }
    
    static func parkingViewController() -> UIViewController {
        let objParkingViewController = AppStoryboard.Parking.viewController(viewControllerClass:ParkingViewController.self)
        return objParkingViewController
    }
    
    static func purchaseParkingViewController() -> UIViewController {
        let objParkingViewController = AppStoryboard.Parking.viewController(viewControllerClass:PurchaseParkingViewController.self)
        return objParkingViewController
    }
    
    static func buildingInfoViewController() -> UIViewController  {
        let objbuildingInfoViewController = AppStoryboard.Building
            .viewController(viewControllerClass:BuildingInfoViewController.self)
        return objbuildingInfoViewController
    }
    
    static func mediaViewController() -> UIViewController  {
        let objMediaViewController = AppStoryboard.Building
            .viewController(viewControllerClass:MediaViewController.self)
        return objMediaViewController
    }
    
    static func userManageViewController() -> UIViewController  {
        let objUserManageViewController = AppStoryboard.UserManagement
            .viewController(viewControllerClass:UserManageViewController.self)
        return objUserManageViewController
    }
    
    static func userDetailsViewController() -> UIViewController  {
        let objVisitorDetailViewController = AppStoryboard.UserManagement
            .viewController(viewControllerClass:UserDetailViewController.self)
        return objVisitorDetailViewController
    }
    
    static func userCreateViewController() -> UIViewController  {
        let objUserCreateViewController = AppStoryboard.UserManagement
            .viewController(viewControllerClass:UserCreateViewController.self)
        return objUserCreateViewController
    }
    
    static func visitListViewController() -> UIViewController  {
        let objVisitListViewController = AppStoryboard.Visitor
            .viewController(viewControllerClass:VisitListViewController.self)
        return objVisitListViewController
    }
    
    static func addVisitViewController() -> UIViewController  {
        let objAddVisitViewController = AppStoryboard.Visitor
            .viewController(viewControllerClass:AddVisitViewController.self)
        return objAddVisitViewController
    }
    
    static func buildingCalendarViewController() -> UIViewController  {
        let objBuildingCaledar = AppStoryboard.Building
            .viewController(viewControllerClass:BuildingCalendarViewController.self)
        return objBuildingCaledar
    }
    static func buildingCalendarEventViewController() -> UIViewController  {
        let objBuildingCaledarEvent = AppStoryboard.Building
            .viewController(viewControllerClass:BuildingCalendarEventInfoViewController.self)
        return objBuildingCaledarEvent
    }
    
    static func visitorCreateViewController() -> UIViewController  {
        let objVisitorCreateViewController = AppStoryboard.Visitor
            .viewController(viewControllerClass:VisitCreateVisitorViewController.self)
        return objVisitorCreateViewController
    }
    
    static func visitDetailsViewController() -> UIViewController  {
        let objAddVisitViewController = AppStoryboard.Visitor
            .viewController(viewControllerClass:VisitDetailsViewController.self)
        return objAddVisitViewController
    }
    static func visitorBarcodeDetailsViewController() -> UIViewController  {
        let objvisitorBarcodeDetailsController = AppStoryboard.Visitor
            .viewController(viewControllerClass:VisitorBarcodeDetailController.self)
        return objvisitorBarcodeDetailsController
    }
    
    static func visitorDetailsViewController() -> UIViewController  {
        let objVisitorDetailViewController = AppStoryboard.Visitor
            .viewController(viewControllerClass:VisitorDetailViewController.self)
        return objVisitorDetailViewController
    }
    
    static func visitFilterViewController() -> UIViewController  {
        let objVisitFilterViewController = AppStoryboard.Visitor
            .viewController(viewControllerClass:VisitFilterViewController.self)
        return objVisitFilterViewController
    }
    
    static func userRoleOverrideVC() -> UIViewController  {
        let objUserRoleOverrideVC = AppStoryboard.UserManagement
            .viewController(viewControllerClass:UserRoleOverrideVC.self)
        return objUserRoleOverrideVC
    }
    
    static func myProfileTabVC() -> UIViewController  {
        let objmyProfileTabVC = AppStoryboard.MyProfile
            .viewController(viewControllerClass:MyProfileTabViewController.self)
        return objmyProfileTabVC
    }
    
    static func myProfileVC() -> UIViewController  {
        let objmyProfile = AppStoryboard.MyProfile
            .viewController(viewControllerClass:MyProfileVC.self)
        return objmyProfile
    }
    
    static func profileViewController() -> UIViewController {
        let objProfileViewController = AppStoryboard.MyProfile
            .viewController(viewControllerClass:ProfileViewController.self)
        objProfileViewController.viewModel = ProfileViewModel(sections: ProfileHelper.profileSections(), options: ProfileHelper.profileOptions())
        return objProfileViewController
    }
    
    static func fullImageVC() -> UIViewController {
        let objDisplayFullImageVC = AppStoryboard.Common.viewController(viewControllerClass: DisplayFullImageVC.self)
        return objDisplayFullImageVC
    }
    
    static func logViewController() -> UIViewController  {
        let objUserRoleOverrideVC = AppStoryboard.MyProfile
            .viewController(viewControllerClass:LogViewController.self)
        return objUserRoleOverrideVC
    }
    
    static func editUserProfileVC() -> UIViewController  {
        let objUserCreateViewController = AppStoryboard.MyProfile
            .viewController(viewControllerClass:PersonalInfoEditViewController.self)
        return objUserCreateViewController
    }
    
    static func cropImageViewController() -> UIViewController  {
        let objCropImageViewController = AppStoryboard.MyProfile
            .viewController(viewControllerClass:CropImageViewController.self)
        return objCropImageViewController
    }
    
    static func massNotificationViewController() -> UIViewController {
        let objmassNotificationViewController = AppStoryboard.MassNotification.viewController(viewControllerClass:MassNotificationViewController.self)
        return objmassNotificationViewController
    }
    
    static func notificationListViewController() -> UIViewController {
        let objnotificationListViewController = AppStoryboard.Notification.viewController(viewControllerClass:NotificationListViewController.self)
        return objnotificationListViewController
    }
    
    static func notifiacationFilterViewController() -> UIViewController {
        let objNotifiacationFilterViewController = AppStoryboard.Notification.viewController(viewControllerClass:NotifiacationFilterViewController.self)
        return objNotifiacationFilterViewController
    }
    
    static func createMassNotiViewController() -> UIViewController {
        let objcreateMassNotiViewController = AppStoryboard.MassNotification.viewController(viewControllerClass:CreateMassNotiViewController.self)
        return objcreateMassNotiViewController
    }
    
    static func massDetailViewController() -> UIViewController {
        let objMassDetailViewController = AppStoryboard.MassNotification.viewController(viewControllerClass:MassDetailViewController.self)
        return objMassDetailViewController
    }
    
    static func enterTemplateViewController() -> UIViewController {
        let objEnterTemplateViewController = AppStoryboard.MassNotification.viewController(viewControllerClass:EnterTemplateViewController.self)
        return objEnterTemplateViewController
    }
    
    static func massNotificationFilterViewController() -> UIViewController  {
        let objMassNotificationFilterViewController = AppStoryboard.MassNotification
            .viewController(viewControllerClass:MassNotificationFilterViewController.self)
        return objMassNotificationFilterViewController
    }
    
    static func notificationSettingsViewController() -> UIViewController  {
        let objNotificationSettingsViewController = AppStoryboard.Notification
            .viewController(viewControllerClass:NotificationSettingsViewController.self)
        return objNotificationSettingsViewController
    }
    
    static func verifyPhoneViewController() -> UIViewController {
        let objVerifyPhoneViewController = AppStoryboard.Notification.viewController(viewControllerClass:VerifyPhoneViewController.self)
        return objVerifyPhoneViewController
    }
    
    static func userListFilterViewController() -> UIViewController  {
        let objUserListFilterViewController = AppStoryboard.UserManagement
            .viewController(viewControllerClass:UserListFilterViewController.self)
        return objUserListFilterViewController
    }
    
    static func parkingListFilterViewController() -> UIViewController  {
        let objUserListFilterViewController = AppStoryboard.Parking
            .viewController(viewControllerClass:ParkingListFilterVC.self)
        return objUserListFilterViewController
    }
    
    static func termsWebViewController() -> UIViewController  {
        let objTermsWebViewController = AppStoryboard.Login
            .viewController(viewControllerClass:TermsWebViewController.self)
        return objTermsWebViewController
    }
    
    static func clearanceViewController() -> UIViewController  {
        let objClearanceViewController = AppStoryboard.Visitor
            .viewController(viewControllerClass:ClearanceViewController.self)
        return objClearanceViewController
    }
    
    static func bkPaymentTabViewController() -> UIViewController  {
        let objBkPaymentTabViewController = AppStoryboard.Common
            .viewController(viewControllerClass:BkPaymentTabViewController.self)
        return objBkPaymentTabViewController
    }
    
    static func addCreditCardViewController() -> UIViewController  {
        let objUserRoleOverrideVC = AppStoryboard.MyProfile
            .viewController(viewControllerClass:AddCreditCardViewController.self)
        return objUserRoleOverrideVC
    }
    
    static func achDetailViewController() -> UIViewController  {
        let objachDetailViewController = AppStoryboard.MyProfile
            .viewController(viewControllerClass:ACHDetailViewController.self)
        return objachDetailViewController
    }
    
    static func cardAdd() -> UIViewController  {
        let objMyCardsTabViewController = AppStoryboard.Card
            .viewController(viewControllerClass:CardCreateAndListViewController.self)
        return objMyCardsTabViewController
    }
    
    static func myCardsTabViewController() -> UIViewController  {
        let objPaymentViewController = AppStoryboard.MyProfile
            .viewController(viewControllerClass:PaymentViewController.self)
        return objPaymentViewController
    }
    
    static func myVehiclesVC() -> UIViewController  {
        let objMyCardsTabViewController = AppStoryboard.MyProfile
            .viewController(viewControllerClass:MyVehiclesListVC.self)
        return objMyCardsTabViewController
    }
    
    static func addVehicleVC() -> UIViewController  {
        let objAddVisitViewController = AppStoryboard.MyProfile
            .viewController(viewControllerClass:AddVehicleVC.self)
        return objAddVisitViewController
    }
    
    static func editACHViewController() -> UIViewController  {
        let objEditACHViewController = AppStoryboard.MyProfile
            .viewController(viewControllerClass:EditACHViewController.self)
        return objEditACHViewController
    }
    
    static func editCreditCardViewController() -> UIViewController  {
        let objEditCreditCardViewController = AppStoryboard.MyProfile
            .viewController(viewControllerClass:EditCreditCardViewController.self)
        return objEditCreditCardViewController
    }
    
    static func bkInvoiceViewController() -> UIViewController  {
        let objBkCreditCardViewController = AppStoryboard.Common
            .viewController(viewControllerClass:BkInvoiceViewController.self)
        return objBkCreditCardViewController
    }
    
    static func bkCreditCardViewController() -> UIViewController  {
        let objBkCreditCardViewController = AppStoryboard.Common
            .viewController(viewControllerClass:BkCreditCardViewController.self)
        return objBkCreditCardViewController
    }
    
    static func bkACHCardViewController() -> UIViewController  {
        let objBkACHCardViewController = AppStoryboard.Common
            .viewController(viewControllerClass:BkACHCardViewController.self)
        return objBkACHCardViewController
    }
    
    static func serviceRequest() -> UIViewController {
        let objServiceViewController = AppStoryboard.ServiceRequests
            .viewController(viewControllerClass:ServiceRequestsVC.self)
        return objServiceViewController
    }
    
    static func serviceRequestDetailsTabsViewController() -> UIViewController {
        let objServiceViewController = AppStoryboard.ServiceRequests
            .viewController(viewControllerClass:ServiceRequestDetailsTabsVC.self)
        return objServiceViewController
    }
    
    static func serviceRequestCreate() -> UIViewController  {
        let objServiceRequestCreateViewController = AppStoryboard.ServiceRequests
            .viewController(viewControllerClass:ServiceRequestCreateViewController.self)
        return objServiceRequestCreateViewController
    }
    
    static func viewServiceRequest() -> UIViewController  {
        let objviewServiceRequestViewController = AppStoryboard.ServiceRequests
            .viewController(viewControllerClass:ViewServiceRequestViewController.self)
        return objviewServiceRequestViewController
    }
    
    static func repeatServiceRequest() -> UIViewController  {
        let objrepeatServiceRequestViewController = AppStoryboard.ServiceRequests
            .viewController(viewControllerClass:RepeatRequestViewController.self)
        return objrepeatServiceRequestViewController
    }
    
    static func intervalAndRepeatServiceRequest() -> UIViewController  {
        let objintervalAndRepeatServiceRequestViewController = AppStoryboard.ServiceRequests
            .viewController(viewControllerClass:IntervalAndRepeatViewController.self)
        return objintervalAndRepeatServiceRequestViewController
    }
    
    static func onDaysMonthlyServiceRequest() -> UIViewController  {
        let objonDaysRequestViewController = AppStoryboard.ServiceRequests
            .viewController(viewControllerClass:OnDaysWeeklyViewController.self)
        return objonDaysRequestViewController
    }
    
    static func onDaysWeeklyServiceRequest() -> UIViewController  {
        let objonDaysListRequestViewController = AppStoryboard.ServiceRequests
            .viewController(viewControllerClass:OnDaysListWeeklyViewController.self)
        return objonDaysListRequestViewController
    }
    
    static func repeatUntilServiceRequest() -> UIViewController  {
        let objRepeatUntilViewController = AppStoryboard.ServiceRequests
            .viewController(viewControllerClass:RepeatUntilViewController.self)
        return objRepeatUntilViewController
    }
    
    static func serviceRequestorViewController() -> UIViewController  {
        let serviceRequestorViewController = AppStoryboard.ServiceRequests
            .viewController(viewControllerClass:ServiceReqeustorViewController.self)
        return serviceRequestorViewController
    }
    
    static func ServiceRequestListViewController() -> UIViewController  {
        let serviceRequestorViewController = AppStoryboard.ServiceRequests
            .viewController(viewControllerClass:ServiceRequestListVC.self)
        return serviceRequestorViewController
    }
    
    static func createServiceRequestViewController() -> UIViewController  {
        let createServiceRequestViewController = AppStoryboard.ServiceRequests
            .viewController(viewControllerClass:ServiceRequestCreateViewController.self)
        return createServiceRequestViewController
    }
    
    static func serviceViewController() -> UIViewController  {
        let serviceViewController = AppStoryboard.ServiceRequests
            .viewController(viewControllerClass:ServiceRequestViewController.self)
        return serviceViewController
    }
    
    static func homeViewController() -> UIViewController  {
        let objHomeViewController = AppStoryboard.Home
            .viewController(viewControllerClass:NewHomeViewController.self)
        return objHomeViewController
    }
    
    static func updateServiceRequestViewController() -> UIViewController  {
        let objUpdateViewController = AppStoryboard.ServiceRequests
            .viewController(viewControllerClass:UpdateServiceRequestTableViewController.self)
        return objUpdateViewController
    }
    
    static func updateStatusServiceRequestViewController() -> UIViewController  {
        let objStatusUpdateViewController = AppStoryboard.ServiceRequests
            .viewController(viewControllerClass:UpdateStatusTableViewController.self)
        return objStatusUpdateViewController
    }
    
    static func communicationPortal() -> UIViewController  {
        let objCommunicationPortal = AppStoryboard.CommunicationPortal
            .viewController(viewControllerClass:CommunicationPortalViewController.self)
        return objCommunicationPortal
    }
    
    static func documentsViewController() -> UIViewController  {
        let objDocumentsView = AppStoryboard.DocumentsView
            .viewController(viewControllerClass:DocumentsViewController.self)
        return objDocumentsView
    }
    
    static func previewDocumentsViewController() -> UIViewController  {
        let objpreviewDocumentsView = AppStoryboard.DocumentsView
            .viewController(viewControllerClass:DocumentsPreviewViewController.self)
        return objpreviewDocumentsView
    }
    static func subFolderDocumentsViewController() -> UIViewController  {
        let objsubFolderDocumentsView = AppStoryboard.DocumentsView
            .viewController(viewControllerClass:DocumentSubFolderViewController.self)
        return objsubFolderDocumentsView
    }
    static func termsAndConditions() -> UIViewController  {
        let termsAndConditions = AppStoryboard.TermsAndCondition
            .viewController(viewControllerClass:TermsAndConditionViewController.self)
        return termsAndConditions
    }
    
    static func nearbyTransit() -> UIViewController  {
        let nearbyTransits = AppStoryboard.NearbyTransit
            .viewController(viewControllerClass:CBWebViewController.self)
        return nearbyTransits
    }
    
    static func about77W() -> UIViewController  {
        let about77View = AppStoryboard.NearbyTransit
            .viewController(viewControllerClass:CBWebViewController.self)
        return about77View
    }
    
    //MARK: Bike Room Parking
    static func bikeRoomParkingBaseVC() -> UIViewController  {
        let bikeRoomParkingBaseVC = AppStoryboard.Parking
            .viewController(viewControllerClass:BikeParkingBaseController.self)
        return bikeRoomParkingBaseVC
    }
    
    static func bikeRoomAccessViewController() -> UIViewController  {
        let vc = AppStoryboard.Parking
            .viewController(viewControllerClass:BikeRoomAccessViewController.self)
        return vc
    }
    
    static func bikeRoomUsersListViewController() -> UIViewController  {
        let vc = AppStoryboard.Parking
            .viewController(viewControllerClass:BikeRoomUsersListViewController.self)
        return vc
    }
    
    //MARK: AirQuality
    static func getAirQualityViewController() -> AirQualityViewController  {
        let airQualityViewController = AppStoryboard.IAQ
            .viewController(viewControllerClass: AirQualityViewController.self)
        return airQualityViewController
    }
    
    static func getAllMetricsViewController() -> AllMetricsViewController  {
        let allMetricViewController = AppStoryboard.IAQ
            .viewController(viewControllerClass: AllMetricsViewController.self)
        return allMetricViewController
    }
    
    static func getIAQTenantBuildingManagerViewController() -> IAQTenantBuildingMangerViewController  {
        let airQualityViewController = AppStoryboard.IAQ
            .viewController(viewControllerClass: IAQTenantBuildingMangerViewController.self)
        return airQualityViewController
    }
    
    //Home2
    static func homeViewController2() -> UIViewController  {
        let objHomeViewController = AppStoryboard.Home2
            .viewController(viewControllerClass: HomeViewController2.self)
        return objHomeViewController
    }
    
    static func hidKeycardViewController() -> UIViewController  {
        let keycardViewController = AppStoryboard.Home.viewController(viewControllerClass: HIDKeyCardViewController.self)
        return keycardViewController
    }
    
    static func blueDiamondKeyCardViewController() -> UIViewController  {
        let blueDiamondKeyCardViewController = AppStoryboard.Home.viewController(viewControllerClass: BlueDiamondKeyCardViewController.self)
        return blueDiamondKeyCardViewController
    }
    
    static func elevatorViewController() -> UIViewController  {
        let elevatorViewController = AppStoryboard.Home.viewController(viewControllerClass: ElevatorViewController.self)
        return elevatorViewController
    }
    
    static func elevatorMobileKeycardViewController() -> UIViewController  {
        let elevatorMobileViewController = AppStoryboard.Home.viewController(viewControllerClass: ElevatorKeycardViewController.self)
        return elevatorMobileViewController
    }
    
    static func pageViewController() -> PageViewController  {
        let pageViewController = AppStoryboard.Card
            .viewController(viewControllerClass: PageViewController.self)
        return pageViewController
    }
    
    static func illustrationViewController() -> IllustrationViewController  {
        let illustrationViewController = AppStoryboard.Card
            .viewController(viewControllerClass: IllustrationViewController.self)
        return illustrationViewController
    }
    
    static func alertViewController() -> AlertViewController  {
        let alertViewController = AppStoryboard.Card
            .viewController(viewControllerClass: AlertViewController.self)
        return alertViewController
    }
    
    static func keycardHelpViewController() -> KeycardHelpViewController  {
        let keycardHelpViewController = AppStoryboard.Card
            .viewController(viewControllerClass: KeycardHelpViewController.self)
        return keycardHelpViewController
    }
    
    static func reconfigureKeycardViewController() -> ReconfigureKeycardViewController  {
        let reconfigureKeycardViewController = AppStoryboard.Card
            .viewController(viewControllerClass: ReconfigureKeycardViewController.self)
        return reconfigureKeycardViewController
    }
    
}
