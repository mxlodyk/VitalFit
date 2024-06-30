//  WorkoutListViewModel.swift
//  VitalFit
//  Created by Melody Flavel on 29/5/2024.

import Foundation
import SwiftUI

class WorkoutListViewModel: ObservableObject {
    
    var workouts: [WorkoutModel] = []
    //@Published var programID: String
    
    init() {
        getWorkouts(programID: "")
    }
    
    func getWorkouts(programID: String) -> [WorkoutModel] {
            workouts = [
            WorkoutModel(name: "Glutes", exercises: []),
            WorkoutModel(name: "Hamstrings", exercises: []),
            WorkoutModel(name: "Quadriceps", exercises: [])
        ]
        //workouts.append(contentsOf: newWorkouts)
        return workouts
    }
    
    func createNewWorkoutListViewModel() -> WorkoutListViewModel {
        let newWorkoutListViewModel = WorkoutListViewModel()
        return newWorkoutListViewModel
    }
    
    func deleteWorkout(indexSet: IndexSet){
        workouts.remove(atOffsets: indexSet)
    }
    func moveWorkout(from: IndexSet, to: Int){
        workouts.move(fromOffsets: from, toOffset: to)
    }
    
    func addWorkout(newWorkout: WorkoutModel) {
        workouts.append(newWorkout)
    }
}
