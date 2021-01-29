//
//  Utility.swift
//  GithubViewer
//
//  Created by Andy Chou on 1/29/21.
//

import Foundation

class Utility {
    
    // Util method to convert date to a human readable string
    static func timeFormatter(date:Date) -> String {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h:mm a"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        let elapsedTimeInSeconds = Date().timeIntervalSince(date)
        if elapsedTimeInSeconds < 0 {
            return ""
        }
        let secondsInDays:TimeInterval = 3600 * 24
        if elapsedTimeInSeconds > 7 * secondsInDays{
            dateFormatter.dateFormat = "MM/dd/yy"
        }else if elapsedTimeInSeconds >  secondsInDays{
            dateFormatter.dateFormat = "EEEE"
        }
        return dateFormatter.string(from:date)
    }
    
    
}
