//  VitalFitApp.swift
//  VitalFit
//  Created by Melody Flavel on 12/10/2023.

import SwiftUI

@main
struct VitalFitApp: App {
    
    @StateObject var programListViewModel: ProgramListViewModel = ProgramListViewModel()
    @StateObject var workoutListViewModel: WorkoutListViewModel = WorkoutListViewModel()
    @StateObject var exerciseListViewModel: ExerciseListViewModel = ExerciseListViewModel()
    
    var body: some Scene {
        WindowGroup {
                    NavigationView {
                            HomeView()
                    }
                    .environmentObject(programListViewModel)
                    .environmentObject(workoutListViewModel)
                    .environmentObject(exerciseListViewModel)
        }
    }
}
