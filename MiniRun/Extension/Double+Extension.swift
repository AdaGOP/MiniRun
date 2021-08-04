//
//  Double+Extension.swift
//  MiniRun
//
//  Created by Jazilul Athoya on 03/08/21.
//

import Foundation

extension Double {
    
    func toStringWith(precision: Int) -> String {
        return String(format: "%.\(precision)f", self)
    }
    
}
