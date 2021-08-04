//
//  DateHelper.swift
//  MiniRun
//
//  Created by Jazilul Athoya on 04/08/21.
//

import Foundation

class DateHelper {
    
    func convertToHourMinuteFrom(seconds: Double) -> String {
        let secondInt = Int(seconds)
        
        let second = secondInt % 60
        var minute = secondInt / 60
        
        let hour = minute / 60
        minute = minute % 60
        
        return "\(hour):\(minute.toStringWithLeadingZero()):\(second.toStringWithLeadingZero())"
    }
}
