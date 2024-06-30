//  ExerciseListViewModel.swift
//  VitalFit
//  Created by Melody Flavel on 11/10/2023.

import Foundation

class ExerciseListViewModel: ObservableObject {
    
    @Published var exercises: [ExerciseModel] = []
    
    init() {
        getExercises()
    }
    
    func getExercises() {
        let newExercises = [
            ExerciseModel(name: "Hip Thrusts", repetitions: "12", sets: "4", weight: "60", rest: "90"),
            ExerciseModel(name: "Glute Kickbacks", repetitions: "8", sets: "3", weight: "40", rest: "90"),
            ExerciseModel(name: "Hamstring Curls", repetitions: "10", sets: "4", weight: "10", rest: "60"),
            ExerciseModel(name: "Romanian Deadlifts", repetitions: "12", sets: "4", weight: "60", rest: "90"),
            ExerciseModel(name: "Squats", repetitions: "12", sets: "4", weight: "60", rest: "90"),
            ExerciseModel(name: "Leg Extensions", repetitions: "12", sets: "4", weight: "60", rest: "90")
        ]
        exercises.append(contentsOf: newExercises)
    }
    
    func deleteExercise(indexSet: IndexSet){
        exercises.remove(atOffsets: indexSet)
    }
    func moveExercise(from: IndexSet, to: Int){
        exercises.move(fromOffsets: from, toOffset: to)
    }
    
    func addExercise(name: String, repetitions: String, sets: String, weight: String, rest: String) {
        let newExercise = ExerciseModel(name: name, repetitions: repetitions, sets: sets, weight: weight, rest: rest)
        exercises.append(newExercise)
    }
}
