//
//  WorkoutModel.swift
//  MiniRun
//
//  Created by Jazilul Athoya on 03/08/21.
//

import Foundation
import CoreLocation

struct WorkoutModel {
    var title: String = ""
    var desc: String = ""
    var startTime: Date = Date()
    var endTime: Date = Date()
    var location: CLLocationCoordinate2D = CLLocationCoordinate2D()
    var locationName: String = ""
    var distance: Double = 0.0
    var totalTime: Double {
        return endTime.timeIntervalSince(startTime)
    }
    var activeCalories: Int = 0
    var totalCalories: Int = 0
    var minEvelation: Int = 0
    var maxElevation: Int = 0
    var averageCandence: Int = 0
    var averageHeartRate: Int = 0
    var averagePace: Double = 0.0
}
