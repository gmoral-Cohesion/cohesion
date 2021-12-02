//
//  ThemeConstant.h
//  StemAccel
//
//  Created by Softweb Solutions on 1/25/16.
//  Copyright © 2016 Softweb Solutions. All rights reserved.
//

import Foundation
import UIKit

//=======================ApplicationTheme=========================//

let k_ColorNavigation = "ColorNavigation"
let k_ColorNavigationTint = "ColorNavigationTint"
let k_ColorNavigationAttribute = "ColorNavigationAttribute"
let k_ColorNavigationLight = "ColorNavigationLight"

let k_ColorViewBackground = "ColorViewBackground"
let k_ColorSubviewBackground = "ColorSubviewBackground"
let k_ColorTransparentBackground = "ColorTransparentBackground"
let k_ColorTagviewBackground = "ColorTagviewBackground"


let k_ColorButtonActive = "ColorButtonActive"
let k_ColorButtonInactive = "ColorButtonInactive"
let k_ColorWhiteText = "ColorWhiteText"
let k_ColorDarkText = "ColorDarkText"
let k_ColorLightText = "ColorLightText"
let k_ColorRedText = "ColorRedText"
let k_ColorDarkThemeDarkText = "ColorDarkThemeDarkText"
let k_ColorAddButton = "ColorAddButton"
let k_ColorDateText = "ColorDateText"
let k_ColorNavigationText = "ColorNavigationText"


let k_ColorCellSelector = "ColorCellSelector"
let k_ColorCellBorder = "ColorCellBorder"
let k_ColorBorder = "ColorBorder"
let k_ColorLineDivider = "ColorLineDivider"

let k_ColorBlackTextColor = "ColorBlackTextColor"

let k_ColorDeleteButton = "ColorDeleteButton"

let k_ColorEditButton = "ColorEditButton"
let k_ColorParkingSpotBG = "ColorParkingSpotBG"

let k_ColorBuildingLogo = "ColorBuildingLogo"
let k_ColorClientLogo = "ColorClientLogo"
let k_ColorBuildingAddress = "ColorBuildingAddress"

let k_ColorSideMenuDefault = "ColorSideMenuDefault"
let k_ColorSideMenuSelected = "ColorSideMenuSelected"
let k_ColorSideMenuBackground = "ColorSideMenuBackground"

let k_ColorDarkHeadingText = "ColorDarkHeadingText"

let k_ColorHeadingText = "ColorHeadingText"
let k_ColorBuildingLocationText = "ColorBuildingLocationText"
let k_ColorBuildingScreenText = "ColorBuildingScreenText"

let k_ColorFeatureLogo = "ColorFeatureLogo"
let k_ColorClockLogoBackground = "ColorClockLogoBackground"

let k_ColorBannerViewBackground = "ColorBannerViewBackground"

let k_ColorDisableTextBackground = "ColorDisableTextBackground"
let k_ColorTextFieldBackground = "ColorTextFieldBackground"

let k_ColorTabbarSelectedText = "ColorTabbarSelectedText"
let k_ColorTabbarSelectedBackground = "ColorTabbarSelectedBackground"

let k_ColorTabbarDefaultText = "ColorTabbarDefaultText"
let k_ColorTabbarDefaultBackground = "ColorTabbarDefaultBackground"
let k_colorParkingAssignBackground = "colorParkingAssignBackground"

let k_ColorVisitorDetailSubBackground = "ColorVisitorDetailSubBackground"
let k_ColorVisitorDirectoryTitle = "ColorVisitorDirectoryTitle"

let k_ColorAstrictSign = "ColorAstrictSign"
let k_ColorProfileHeading = "ColorProfileHeading"
let k_ColorNotificationUnread = "ColorNotificationUnread"
let k_ColorPopupViewBackground = "ColorPopupViewBackground"

let k_colorMediumSeverity = "colorMediumSeverity"
let k_colorHighSeverity = "colorHighSeverity"
let k_colorLowSeverity = "colorLowSeverity"
let k_colorSelectedParking = "colorSelectedParking"
let k_colorParkingReserved = "colorParkingReserved"
let k_colorAvailableParking = "colorAvailableParking"
let k_colorParkingAllotted = "colorParkingAllotted"
let k_colorActivityIndicator = "colorActivityIndicator"
let k_colorHUDBackground = "colorHUDBackground"
let k_colorHUDActivity = "colorHUDActivity"
//=======================Dashboard=========================//
let k_ColorElectricityBackground = "ColorElectricityBackground"
let k_ColorTemperatureBackground = "ColorTemperatureBackground"
let k_ColorHuminityBackground = "ColorHuminityBackground"
let k_ColorCO2LevelBackground = "ColorCO2LevelBackground"
let k_ColorEnviormentTitle = "ColorEnviormentTitle"

let k_ColorEventBackground = "ColorEventBackground"

let k_ColorDoneRequest = "ColorDoneRequest"
let k_ColorInProgressRequest = "ColorInProgressRequest"
let k_ColorPendingRequest = "ColorPendingRequest"
let k_ColorBuilgingWifi = "ColorBuilgingWifi"
let k_ColorVisitorLogoBackground = "ColorVisitorLogoBackground"
let k_ColorVisitorTitle = "ColorVisitorTitle"
let k_ColorVisitorName = "ColorVisitorName"
let k_ColorVisitorDetailLogo = "ColorVisitorDetailLogo"
let k_ColorVisitorDetailLogoTitle = "ColorVisitorDetailLogoTitle"


var backgroundColorCode:String? {
    return SharedClass.sharedInstance.currentTheme?.primaryColor
}
