//
//  WorkoutDetailView.swift
//  MiniRun
//
//  Created by Jazilul Athoya on 03/08/21.
//

import SwiftUI

struct WorkoutDetailView: View {
    
    let viewModel = WorkoutDetailViewModel()
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                // Run Info
                Group {
                    HStack {
                        Group {
                            Circle()
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .leading)
                                .foregroundColor(Color.primaryGreen)
                            VStack(alignment: .leading) {
                                Text(viewModel.data.title)
                                Text(viewModel.data.desc).foregroundColor(.primaryGreen)
                                Text("\(viewModel.data.startTime.getTimeAndMinute()) - \(viewModel.data.endTime.getTimeAndMinute())")
                                    .foregroundColor(.primaryGrey)
                                Text(viewModel.data.locationName)
                                    .foregroundColor(.primaryGrey)
                            }
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    }
                    Divider().background(Color.white)
                }
                // Time and Distance
                Group {
                    HStack{
                        Group {
                            VStack(alignment: .leading) {
                                Text("Time")
                                Text(DateHelper().convertToHourMinuteFrom(seconds: viewModel.data.totalTime)).font(.system(size: 24)).foregroundColor(.primaryYellow)
                            }
                            VStack(alignment: .leading) {
                                Text("Distance")
                                Text("\(viewModel.data.distance.toStringWith(precision: 0))KM").font(.system(size: 24)).foregroundColor(.primaryTeal)
                            }
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    }
                    Divider().background(Color.white)
                }
                // Calories
                Group {
                    HStack{
                        Group {
                            VStack(alignment: .leading){
                                Text("Active Kilocalories")
                                Text("\(viewModel.data.activeCalories)Kcal").font(.system(size: 24)).foregroundColor(.primaryRed)
                            }
                            VStack(alignment: .leading){
                                Text("Total Kilocalories")
                                Text("\(viewModel.data.totalCalories)Kcal").font(.system(size: 24)).foregroundColor(.primaryRed)
                            }
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    }
                    Divider().background(Color.white)
                }
                // Evelation
                Group {
                    HStack{
                        Group {
                            VStack(alignment: .leading){
                                Text("Elevation")
                                Text("\(viewModel.data.maxElevation)").foregroundColor(.primaryGreen)
                                Text("\(viewModel.data.minEvelation)").foregroundColor(.primaryGreen)
                            }
                            VStack(alignment: .leading){
                                Text("Avg. cadence")
                                Text("\(viewModel.data.averageCandence)SPM").font(.system(size: 24)).foregroundColor(.primaryTeal)
                            }
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    }
                    Divider().background(Color.white)
                }
                // Heart Rate
                Group {
                    HStack{
                        VStack(alignment: .leading) {
                            Text("Avg. Heart Rate")
                            Text("\(viewModel.data.averageHeartRate)BPM").font(.system(size: 24)).foregroundColor(.primaryRed)
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    }
                    Divider().background(Color.white)
                }
                // Pace
                Group {
                    HStack{
                        VStack(alignment: .leading){
                            Text("Avg. Pace")
                            Text("\(viewModel.data.averagePace.toStringWith(precision: 2))/KM").font(.system(size: 24)).foregroundColor(.primaryTeal)
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    }
                    Divider().background(Color.white)
                }
            }
            .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .top)
            .foregroundColor(.white)
            .padding(10)
        }
    }
}

struct WorkoutDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutDetailView()
    }
}
