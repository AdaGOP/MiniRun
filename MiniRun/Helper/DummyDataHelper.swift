//
//  DummyDataHelper.swift
//  MiniRun
//
//  Created by Jazilul Athoya on 03/08/21.
//

import Foundation
import CoreLocation

class DummyDataHelper {
    
    func getSingleDummyModel() -> WorkoutModel {
        return WorkoutModel(title: "Outdoor Run", desc: "Open Gal", startTime: Date(), endTime: Date().advanced(by: 4000), location: CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0), locationName: "Banten", distance: 1231, activeCalories: 101, totalCalories: 324, minEvelation: 1500, maxElevation: 2000, averageCandence: 158, averageHeartRate: 98, averagePace: 10.0)
    }
}
