//
//  ResponseConstant.swift
//  CohesionIB
//


import Foundation


class ResponseConstant  {
    
    //general
    static let responsecode = "code"
    static let data = "data"
    static let message = "msg"
    static let params = "params"

    //login WS
    static let tempPassword = "tempPassword"
    static let token        = "token"
    
    //authToken WS
    static let userTypeIds  = "userTypeIds"
    
    //profile WS
    static let userId  = "userId"
    
    //Theme WS
    static let property  = "property"
    static let propertyName  = "propertyName"
    static let propertyValue  = "propertyValue"
    static let propertyCode  = "propertyCode"

    static let visitorID = "visitorID"

    //user badge
    static let card  = "card"
    static let credentialType = "credentialType"
    static let cardNumber = "cardNumber"
    static let isCardNumberExists = "isCardNumberExists"
    
    //HID
    static let isMobileIdExists = "isMobileIdExists"
    static let invitationCode   = "invitationCode"
    static let invitationID   = "invitationId"
    
    // BuildingConfiguration
    static let configKey  = "key"
    static let configValue  = "value"

    // AccessCard
    static let cardType = "cardType"
    static let paramType = "paramType"
    static let paramValue = "value"
    
    // Notification
    static let notificationCount = "notificationCount"
    
    //refresh Token
    static let companyCode = "companyCode"
    
    static let buildingCode = "buildingCode"
    
    static let featureList = "featureList"
    static let costDetails  = "costDetails"
    static let bookableamenityList  = "amenity"
    
    //ACH
    static let bankVerificationToken = "bankVerificationToken"
}

//Global null check
func ifnull<T>(value: Any?) -> T? {
    if value is NSNull {
        assertionFailure("We don't expecting to get NSNull. If this happens please write a message in iOS chat group or let Lokesh know.")
        return nil
    } else {
        return value as? T
    }
}
