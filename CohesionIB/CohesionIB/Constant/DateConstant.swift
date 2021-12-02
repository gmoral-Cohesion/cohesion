//

import Foundation



class DateConstant  {
    
    
    struct configuration
    {
        static let roundUpDuration = 15 /// round from current time in booklater
        static let defaultDuration = "15 Mins" /// Default duration start from 15 minute
        static let dayInterval = "21 days"
    }
    
    struct dateFormatters {
        
        static let homeViewDateFormatter = "yyyy-MM-dd'T'HH:mm:ss"
        
        static var generalStyle: String {
            if SharedClass.sharedInstance.isSingapore {
                return "dd/MM/yyyy"
            } else {
                return "MM/dd/yyyy"
            }
        }
        //static let generalStyle = "MM/dd/yyyy"  //Display date style using this formater
        static var mediumDateStyle: String {
            if SharedClass.sharedInstance.isSingapore {
                return "dd MMMM, yyyy"
            } else {
                return "MMMM dd, yyyy"
            }
        }
        //static let mediumDateStyle = "MMMM dd, yyyy"  //Display date style using this formater
        static let shortTimeStyle = "hh:mm a"
        
        static let utcDateFormater = "yyyy-MM-dd HH:mm:ss"
        
        static let mergeDateTimeFormat = "MMMM dd,yyyy hh:mm a"
        static let timeDateTimeFormat = "dd MMMM, yyyy hh:mm a"
        
        static var default_display_format_date: String {
            if SharedClass.sharedInstance.isSingapore {
                return "dd MMM YYYY"
            } else {
                return "MMM dd, YYYY"
            }
        }
        //static let default_display_format_date = "MMM dd, YYYY"
        
        //static let default_display_format_date_time = "MMM dd, YYYY hh:mm a"
        static var default_display_format_date_time: String {
            if SharedClass.sharedInstance.isSingapore {
                return "dd MMM, YYYY hh:mm a"
            } else {
                return "MMM dd, YYYY hh:mm a"
            }
        }
        static let default_response_format_time_stamp = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        static let default_response_format_time_stamp2 = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        static let default_display_format_time = "hh:mm a"
        static let default_display_format_timeNoLeading0 = "h:mm a"
        static let default_response_format_date_time = "yyyy-MM-dd'T'HH:mm:ss"

        static let default_request_format_date_time = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        
        static let post_request_format = "yyyy-MM-dd'T'HH:mm:ssZ"

        static let edit_date_format = "MM/dd/yyyy hh:mm a"
        static let edit_date_format1 = "yyyy-MM-dd hh:mm a"

        static let generalStyle1 = "yyyy-MM-dd"
        
        static var generalStyle2: String {
            if SharedClass.sharedInstance.isSingapore {
                return "dd.MM.yyyy"
            } else {
                return "MM.dd.yyyy"
            }
        }

        static var inputDateFormatter: String {
            if SharedClass.sharedInstance.isSingapore {
                return "dd MMM, YYYY"
            } else {
                return "MMM dd, YYYY"
            }
        }
    }
}
