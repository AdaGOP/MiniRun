//
//  WorkoutListViewModel.swift
//  MiniRun WatchKit Extension
//
//  Created by George Ananda on 04/08/21.
//

import Foundation

class WorkoutListViewModel: ObservableObject {
    let data = [
        DummyDataHelper().getSingleDummyModel(),
        DummyDataHelper().getSingleDummyModel(),
        DummyDataHelper().getSingleDummyModel()
    ]
}
