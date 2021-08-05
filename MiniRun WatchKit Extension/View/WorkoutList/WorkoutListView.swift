//
//  WorkoutListView.swift
//  MiniRun WatchKit Extension
//
//  Created by George Ananda on 04/08/21.
//

import SwiftUI

struct WorkOutListCellView: View {
    var workout: WorkoutModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Image(systemName: "hand.point.right.fill")
                    .font(.system(size: 54))
                    .foregroundColor(Color.primaryGreen)
                Spacer()
                ZStack(alignment: .topTrailing) {
                    Image(systemName: "circle.fill")
                        .font(.system(size: 28))
                        .foregroundColor(Color.primaryGreen)
                    Image(systemName: "ellipsis.circle.fill")
                        .font(.system(size: 28))
                        .foregroundColor(Color(.init(displayP3Red: 0.41, green: 0.41, blue: 0.41, alpha: 1)))
                }
                    
            }
            Spacer()
            Text(workout.title)
                .font(.headline)
            Text(workout.desc)
                .font(.headline)
                .textCase(.uppercase)
                .foregroundColor(Color.primaryGreen)
        }
        .listRowBackground(
            Color.init(red: 0.234, green: 0.234, blue: 0.234)
                .clipped()
                .cornerRadius(24)
        )
        .padding(EdgeInsets(top: 12, leading: 8, bottom: 14, trailing: 8))
    }
}

struct WorkoutListView: View {
    let viewModel = WorkoutListViewModel()
    
    var body: some View {
        NavigationView {
            List {
                WorkOutListCellView(workout: viewModel.data[0])
                WorkOutListCellView(workout: viewModel.data[1])
                WorkOutListCellView(workout: viewModel.data[2])
            }
                .listStyle(CarouselListStyle())
                .navigationTitle("Workout")
        }
    }
}

struct WorkoutListView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutListView()
    }
}
