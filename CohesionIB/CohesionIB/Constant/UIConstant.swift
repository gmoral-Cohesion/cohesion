//
//  UIConstant.swift
//  CohesionIB
//


import Foundation
import UIKit

class UIConstant  {

    struct ProgressHUD {
        static let bgColor = "#FFFFFF"
        static let TextColor = "#A9A9A9"
    }
    
   
    struct Login {
        static let buttonColor = "#00A674"
        static let bgColor = "#FFFFFF"

    }
    
    struct AmenityDetails {
        static let buttonColor = "#808080"
        static let imageTintColor = "#00A674"
        
    }
    
    struct FooterColorButton {
        static let DeleteButtonColor = "#FF2851"
        
    }


    
    struct Fonts {
        static func FONT_Geomanist_ExtraLight(_ _size:CGFloat) -> UIFont
        {
            let font: UIFont = UIFont(name: "Geomanist-ExtraLight", size: _size)!
            return font
        }
        
        static func FONT_Geomanist_REGULAR(_ _size:CGFloat) -> UIFont
        {
            let font: UIFont = UIFont(name: "Geomanist-Regular", size: _size)!
            return font
        }
        
        static func FONT_Geomanist_LIGHT(_ _size:CGFloat) -> UIFont
        {
            let font: UIFont = UIFont(name: "Geomanist-Light", size: _size)!
            return font
        }
        
		static func FONT_Geomanist_BOLD(_ _size:CGFloat) -> UIFont
		{
			let font: UIFont = UIFont(name: "Geomanist-Book", size: _size)!
			return font
		}
		
		static func FONT_Geomanist_BOOK(_ _size:CGFloat) -> UIFont
		{
			let font: UIFont = UIFont(name: "Geomanist-Book", size: _size)!
			return font
		}
		
        static func FONT_HELVETICA_BOLD(_ _size:CGFloat) -> UIFont
        {
            let font: UIFont = UIFont(name: "Geomanist-Book", size: _size)!
            return font
        }
        
        static func FONT_Geomanist_THIN(_ _size:CGFloat) -> UIFont
        {
            let font: UIFont = UIFont(name: "Geomanist-Thin", size: _size)!
            return font
        }
        
        static func FONT_Geomanist_MEDIUM(_ _size:CGFloat) -> UIFont
        {
            let font: UIFont = UIFont(name: "Geomanist-Medium", size: _size)!
            return font
        }
        
        static func FONT_Geomanist_Italic(_ _size:CGFloat) -> UIFont
        {
            let font: UIFont = UIFont(name: "Geomanist-Black-Italic", size: _size)!
            return font
        }
        
        static func FONT_Geomanist_ThinItalic(_ _size:CGFloat) -> UIFont
        {
            let font: UIFont = UIFont(name: "Geomanist-Thin-Italic", size: _size)!
            return font
        }
        
        static func FONT_Geomanist_BlackItalic(_ _size:CGFloat) -> UIFont
        {
            let font: UIFont = UIFont(name: "Geomanist-Black-Italic", size: _size)!
            return font
        }
        
        static func FONT_Geomanist_BoldItalic(_ _size:CGFloat) -> UIFont
        {
            let font: UIFont = UIFont(name: "Geomanist-Bold-Italic", size: _size)!
            return font
        }
        
        static func FONT_Geomanist_LightItalic(_ _size:CGFloat) -> UIFont
        {
            let font: UIFont = UIFont(name: "Geomanist-Light-Italic", size: _size)!
            return font
        }
        
        static func FONT_Geomanist_MediumItalic(_ _size:CGFloat) -> UIFont
        {
            let font: UIFont = UIFont(name: "Geomanist-Medium-Italic", size: _size)!
            return font
        }
        
        static func FONT_Geomanist_Black(_ _size:CGFloat) -> UIFont
        {
            let font: UIFont = UIFont(name: "Geomanist-Black", size: _size)!
            return font
        }
        static func FONT_Monteserrat_Light(_ _size:CGFloat) -> UIFont
        {
            let font: UIFont = UIFont(name: "Montserrat-Light", size: _size)!
            return font
        }
        
        static func FONT_Monteserrat_Bold(_ _size:CGFloat) -> UIFont
        {
            let font: UIFont = UIFont(name: "Montserrat-Bold", size: _size)!
            return font
        }
        
        static func FONT_PoppinLight(_ _size:CGFloat) -> UIFont {
            let font: UIFont = UIFont(name: "Poppins-Light", size: _size)!
            return font
        }
        
        static func FONT_PoppinExtraBold(_ _size:CGFloat) -> UIFont {
            let font: UIFont = UIFont(name: "Poppins-ExtraBold", size: _size)!
            return font
        }
        
        static func FONT_PoppinRegular(_ _size:CGFloat) -> UIFont {
            let font: UIFont = UIFont(name: "Poppins-Regular", size: _size)!
            return font
        }
        
        static func FONT_PoppinBlack(_ _size:CGFloat) -> UIFont {
            let font: UIFont = UIFont(name: "Poppins-Black", size: _size)!
            return font
        }
        
        static func FONT_PoppinBold(_ _size:CGFloat) -> UIFont {
            let font: UIFont = UIFont(name: "Poppins-Bold", size: _size)!
            return font
        }
        
        static func FONT_PoppinMedium(_ _size:CGFloat) -> UIFont {
            let font: UIFont = UIFont(name: "Poppins-Medium", size: _size)!
            return font
        }
        
        static func FONT_PoppinSemiBold(_ _size:CGFloat) -> UIFont {
            let font: UIFont = UIFont(name: "Poppins-SemiBold", size: _size)!
            return font
        }
    }

    
    struct Images {
        
        // Menu icons
        static let iconHome = "icon-Home"
        static let iconAmenityManagement = "icon-Amenities"
        static let iconUserManagement = "icon-Users"
        static let iconVisitManagement = "icon-Visits"
        static let iconmassNotification = "icon-Communications"
        static let iconmenusetting = "icon-Settings"
        static let iconmenurolemanage = "icon-menu-rolemanage"
        static let iconmenuinvitation = "icon-menu-invitation"
        static let iconmenuprivacypolicy = "icon-Privacy Policy"
        static let iconmenutermofservice = "icon-Terms of Service"

        static let navigantionBarImage = "header"
        static let showpassword = "showPass"
        static let hidepassword = "hidePass"
        static let clearEmail   = "clear"
        static let backicon   = "icon-back"
        static let building_03   = "building_03"
        static let website_icon   = "icon_website"
        static let dropdown_arrow = "dropdown_arrow"
        static let calendarIcon = "calendar-icon"
        static let checkMarkNormal = "checkbox_normal"
        static let checkMarkSelected = "checkbox_active"
        static let radioIcon = "radio_normal"
        static let radioIconSelected = "radio_active"
        static let userDeleteIcon = "cross"
        static let listDeleteIcon = "icon_user_delete"
        static let iconEmail = "icon-email"
        static let iconPass = "login_password"
        static let sideMenuIcon = "icon-nav"
        static let expDownArrow = "acco_close"
        static let expUpArrow = "acco_open"
        static let iconSearch = "icon-search"
        static let menuDownCell = "menuDown_cell"
        static let menuUpCell = "menuUp_cell"
        static let filter_reset = "filter_reset"
        static let category_event = "category_event"
        static let category_emergency = "category_emergency"
        static let category_announcement = "category_announcement"
        static let category_advertisement = "category_advertisement"
        static let nav_close = "filter_close"
        static let nav_right = "icon_apply_action"
        static let folder = "folder"
        static let file = "file"
        static let logoProgress = "logo_mark_color_default"
        static let iaqDropDown = "iaqDropDown"
        static let webViewNavMenu = "WebViewNavMenu"

    }

}
