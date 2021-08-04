//
//  DateHelper.swift
//  MiniRun
//
//  Created by Jazilul Athoya on 03/08/21.
//

import Foundation

extension Date {
    
    func getTimeAndMinute() -> String {
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: self)
        let minute = calendar.component(.minute, from: self)
        return "\(hour):\(minute)"
    }
    
}
