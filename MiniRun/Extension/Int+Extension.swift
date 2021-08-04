//
//  Int+Extension.swift
//  MiniRun
//
//  Created by Jazilul Athoya on 04/08/21.
//

import Foundation

extension Int {
    
    func toStringWithLeadingZero() -> String {
        return String(format: "%02d", self)
    }
    
}
