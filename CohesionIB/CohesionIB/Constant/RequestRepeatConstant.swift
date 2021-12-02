//
//  RequestRepeatConstant.swift
//  CohesionIBDev
//
//  Created by Muthukumar on 29/04/19.
//  Copyright © 2019 Ravi Vora. All rights reserved.
//

import Foundation

enum Repeat : String {
    case Never = "Never"
    case Daily = "Daily"
    case Weekly = "Weekly"
    case Monthly = "Monthly"
    case Yearly = "Yearly"
}

enum Attachment : String {
    case Camera = "Camera"
    case Phonelibrary = "Phone Library"
    case File = "File"
    case Cancel = "Cancel"
}

struct RepeatRequest {
    var listOfRepeatItems = ["Never", "Daily", "Weekly", "Monthly", "Yearly"]
    var listOfRepeatItemsOnMonth = ["First", "Second", "Third", "Fouth", "Last"]
    init() {
        
    }
    func repeatList() -> [String] {
        return listOfRepeatItems
    }
    
    func arrayOfSelectedRepeat(repeatValue: Repeat) -> [String:[String]] {
        switch repeatValue {
        case Repeat.Never:
            return [:]
        case Repeat.Daily:
            return ["title": ["Interval", "Until"], "subtitle" : ["Daily", "Forever"]]
        case Repeat.Weekly:
            return["title": ["Interval", "On Days", "Until"], "subtitle" : ["Weekly", "Monday", "Forever"]]
        case Repeat.Monthly:
            return["title": ["Interval", "On Days", "Until"], "subtitle" : ["Monthly", "Monday", "Forever"]]
        case Repeat.Yearly:
            return["title": ["Interval","Until"], "subtitle" : ["Yearly","Forever"]]
        
        }
    }
    
    func getRepeatFromInteger(index: Int) -> Repeat {
        switch index {
        case 0:
            return Repeat.Never
        case 1:
            return Repeat.Daily
        case 2:
            return Repeat.Weekly
        case 3:
            return Repeat.Monthly
        case 4:
            return Repeat.Yearly
        default:
            print("default")
        }
        return Repeat.Never
    }
    
    func getIntervals(repeatValue: Repeat) -> [String] {
        switch repeatValue {
        case Repeat.Never:
            return []
        case Repeat.Daily:
             return ["Daily","2 Days","3 Days","4 Days","5 Days","6 Days","7 Days","8 Days","9 Days","10 Days"]
        case Repeat.Weekly:
            return ["Weekly", "2 Weeks","3 Weeks","4 Weeks","5 Weeks","6 Weeks","7 Weeks","8 Weeks","9 Weeks","10 Weeks"]
        case Repeat.Monthly:
            return ["Monthly", "2 Months","3 Months","4 Months","5 Months","6 Months","7 Months","8 Months","9 Months","10 Months"]
          case Repeat.Yearly:
            return ["Yearly", "2 Years","3 Years","4 Years","5 Years","6 Years","7 Years","8 Years","9 Years","10 Years"]
        
        }
    }
    
    func getUntil(repeatValue: Repeat) -> [String] {
        switch repeatValue {
        case Repeat.Never:
            return []
        case Repeat.Daily, Repeat.Weekly, Repeat.Monthly,Repeat.Yearly:
            return ["Forever","Until A Specfic Date"]
        }
    }
    
    func getOnDays(repeatValue: Repeat) -> [String] {
        switch repeatValue {
        case Repeat.Never:
            return []
        case Repeat.Daily,Repeat.Yearly:
            return []
        case Repeat.Weekly:
            return ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
        case Repeat.Monthly:
            return ["Same Day Each Month","Same Week Each Month"]
        }
    }
   
}
