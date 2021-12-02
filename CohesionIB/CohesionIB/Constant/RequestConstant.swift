//
//  RequestConstant.swift
//  CohesionIB
//

import Foundation

class RequestConstant {
    static let kPageSize    =  25
    
    //Login WS
    static let email        = "emailAddress"
    static let password     = "password"
    
    // forgot password WS
    static let emailAddress = "emailAddress"
    
    // change password WS
    static let currentPassWord = "currentPassWord"
    static let newPassword = "newPassword"
    
    //UserList WS
    static let search       = "search"
    static let pageNo       = "pageNo"
    static let pageSize     = "pageSize"
    static let orderBy      = "orderBy"
    static let orderByForUserList = "FirstName asc"
    static let orderByMostRecentVisitorList = "Count desc"
    static let orderByUserCompanyName      = "companyName asc"
    
    static let roleID      = "roleId"

    //User Management : Create User
    static let userName     = "userName"
    static let firstName    = "firstName"
    static let middleName   = "middleName"
    static let lastName     = "lastName"
    static let department   = "department"
    static let designation  = "designation"
    static let companyCode  = "companyCode"
    static let companyName  = "companyName"
    static let code      = "code"
    static let moduleId      = "moduleId"
    static let featureId      = "featureId"
    static let roleId       = "roleId"
    static let userId       = "userId"
    static let userActiveStatus = "status"

    //Upcoming Visit List
    static let orderByAscDate = "StartDateTime asc"
    static let orderByDesDate = "StartDateTime desc"

    static let isMyVisit = "isMyVisit"
    static let startDateTime = "startDateTime"
    static let endDateTime = "endDateTime"
    static let visitType = "visitType"
    static let visitorType = "visitorType"
    static let durationType = "durationType"
    static let companyCodes = "companyCodes"
    static let checkInType = "checkInType"
    // Visit Detail
    static let visitID = "visitId"
    static let scheduleDetailId = "scheduleDetailId"

    static let visitScheduleDetailId = "VisitScheduleDetailId"

    // Add Visit
    static let isOnBehalf = "isOnBehalf"
    static let companyId = "companyId"
    static let invitedBy = "invitedBy"
    static let hostId = "hostId"
    static let subject = "subject"
    static let location = "location"
    static let isRecurring = "isRecurring"
    static let recurringType = "recurringType"
    static let isWeekDay = "isWeekDay"
    static let recurringFrequency = "recurringFrequency"
    static let recurringDayDetail = "recurringDayDetail"
    static let vstartDateTime = "startDateTime"
    static let vendDateTime = "endDateTime"
    static let visitorArray      = "visitor"
    static let visitorId      = "visitorId"
    static let hostType = "hostType"
    static let visitorEmailAddress      = "email"
    static let visitorFirstName      = "firstName"
    static let visitorLastName      = "lastName"
    static let visitorMiddleName     = "middleName"
    static let forUserId = "forUserId"
    static let createdById = "createdById"
    static let arrivalNotificationUsers  = "arrivalNotificationUsers"
    static let isApprovalNeeded = "isApprovalNeeded"
    static let inputTimezone = "inputTimezone"
    static let isCommonAreaLobby = "isCommonAreaLobby"
    static let commonAreaLobby = "commonAreaLobby"
    //V2
    static let clearanceIds = "clearanceIds"
    //Get visitor list
    
    static let isMyVisitor = "isMyVisitor"
    
    // Clerance
    static let cleranceArray      = "request"
    static let clearanceId      = "clearanceId"
    static let clearanceName      = "clearanceName"
    static let clearance      = "clearance"
    static let clearanceType      = "clearanceType"
    
    //Badge
    static let cardNumber  = "cardNumber"

    
    //HID
    static let oldInvitationId = "oldInvitationId"
    static let invitationId = "invitationId"
    static let endpointKey = "endpointKey"
    static let externalId = "externalId"
    static let hidcardNumber = "cardNumber"
    static let hidurl = "url"
    static let hidactive = "active"
    static let deviceEndpointId = "deviceEndpointId"
    static let credentialId = "credentialId"
    
    //Mass Notification
    static let massNotificationCategoryId = "massNotificationCategoryId"
    static let massnotificationTitle = "notificationTitle"
    static let massnotificationDesc = "notificationDesc"
    static let massseverity = "severity"
    static let masssendDateTime = "sendDateTime"
    static let masscompanyList = "company"
    static let massRoleList = "role"
    static let instantNotification = "instantNotification"
    static let masstemplateName = "templateName"
    
    static let categoryIds = "categoryIds"
    static let isMyNotification = "isMyNotification"
    static let massNotificationTemplateId = "massNotificationTemplateId"
    static let massNotificationTemplateName = "massNotificationTemplateName"
    static let isSelectAllCompany = "isSelectAllCompany"
    static let isSelectAllRole = "isSelectAllRole"
    
    // Notification Settings
    static let preferenceValues = "preferenceValues"
    static let preferenceType = "preferenceType"
    static let preferenceValue = "preferenceValue"
    static let excludedNotificationDetails = "excludedNotificationDetails"
    static let eventId = "eventId"
    static let excludedId = "excludedId"
    static let duration = "duration"
    
    //Notification
    
    static let buildingCodes = "buildingCodes"
    static let groupIds = "groupIds"
    static let notification = "notification"

    // Verify Phone
    static let countryCode = "countryCode"
    static let phoneNumber = "phoneNumber"
    static let verificationCode = "verificationCode"
    //Refresh Token WS
    static let token = "token"
    static let buildingCode = "buildingCode"
    
    //Booking Listing
    
    static let bookingType = "bookingType"
    static let organizerCompany = "organizerCompany"
    static let amenityCode = "amenityCode"
    static let bookingStatus = "bookingStatus"
    static let paymentStatus = "paymentStatus"
    static let time = "time"

    //Add Booking
    static let count = "count"
    static let timeFrom = "timeFrom"
    static let timeTo = "timeTo"
    
    static let bookingTitle = "title"
    static let bookingorganizerId = "organizerId"
    static let bookingStartDateTime = "startDateTime"
    static let bookingEndDateTime = "endDateTime"
    static let amenityGroupId = "amenityGroupId"
    static let amenityFurnitureId = "amenityFurnitureId"
    static let amenityFacilities = "amenityFacilities"
    static let amenityFacilityId = "amenityFacilityId"
    static let bookingnoOfAttendee = "noOfAttendee"
    static let isCatering = "isCatering"
    static let vendorName = "vendorName"
    static let bookingNotes = "notes"
    static let additionalDiscount = "additionalDiscount"
    static let paymentToDeductFrom = "paymentToDeductFrom"
    static let bookingID = "bookingId"
    static let isUsedUpdatedSummary = "isUsedUpdatedSummary"
    
    //Add Charge
    static let additionalChargesId = "additionalChargesId"
    static let chargeamount = "amount"
    static let chargedescription = "description"
    static let chargenotes = "notes"
    
    //Cancellation charges
    static let cancellationCharge = "cancellationCharge"
    static let cancellationNote = "note"

    //ACH
    static let bankVerificationToken = "bankVerificationToken"
    static let accountHolderName = "accountHolderName"
    static let accountHolderType = "accountHolderType"
    static let accountId = "accountId"
    static let expirationMonth = "expirationMonth"
    static let expirationYear = "expirationYear"
    static let achname = "name"
    static let achdescription = "description"
    static let achaddressCity = "addressCity"
    static let achaddressCountry = "addressCountry"
    static let achaddressLine1 = "addressLine1"
    static let achaddressState = "addressState"
    static let achaddressZip = "addressZip"
    static let achaddressLine2 = "addressLine2"

    //Credit Card
    static let creditCardToken = "token"
    static let creditCardname = "name"
    static let creditCarddescription = "description"
    static let creditCardaddressCity = "addressCity"
    static let creditCardaddressCountry = "addressCountry"
    static let creditCardaddressLine1 = "addressLine1"
    static let creditCardaddressState = "addressState"
    static let creditCardaddressZip = "addressZip"
    static let creditCardaddressLine2 = "addressLine2"
    static let isEditMode = "isEditMode"
    
    // Add Service Request
    static let id = "id"
    static let category = "category"
    static let locationInfo = "locationInfo"
    static let usersInfo = "usersInfo"
    static let assets = "assests"
    static let createdDate = "createdDate"
    static let createdBy = "createdBy"
    static let createdByUserName = "createdByUserName"
    static let modifyDate = "modifyDate"
    static let modifyBy = "modifyBy"
    static let modifyByUserName = "modifyByUserName"
    static let buildingName = "buildingName"
    static let requestDescription = "requestDescription"
    static let billable = "billable"
    static let estimatedLabor = "estimatedLabor"
    static let estimatedMaterials = "estimatedMaterials"
    static let description = "description"
    static let onBehalf = "onBehalf"
    static let recurringServiceRequest = "recurringServiceRequest"
    static let assignedToId = "assignedToId"
    static let assignedToName = "assignedToName"
    static let modifyById = "modifyById"
    static let parentServiceRequestId = "parentServiceRequestId"
    static let statusId = "statusId"
    static let statusName = "statusName"
    static let attachment = "attachment"
    static let isonBehalf = "isOnBehalf"
    static let updateDescription = "updateDescription"
    static let modifyByUserNameUdpate = "modifyByUserName"

// Update Service Request



    
    // Parking
    static let isReserved = "isReserved"
    static let noOfUnReservedParkingSpot = "noOfUnReservedParkingSpot"
    static let reservedParkingSpot = "reservedParkingSpot"
    static let parkingSpotId = "parkingSpotId"
}

