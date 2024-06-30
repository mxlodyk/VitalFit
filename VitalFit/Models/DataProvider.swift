//  DataProvider.swift
//  VitalFit
//  Created by Melody Flavel on 3/6/2024.

import Foundation

struct DataProvider {
    
    static var programs: [ProgramModel] = []
    
    static func getPrograms() -> [ProgramModel] {
        if programs.isEmpty {
            var program1 = ProgramModel(name: "Melody's Program", workouts: [])
            program1.workouts = [
                WorkoutModel(name: "Glutes", exercises: []),
                WorkoutModel(name: "Hamstrings", exercises: []),
                WorkoutModel(name: "Quadriceps", exercises: [])
            ]
            program1.workouts[0].exercises = [
                ExerciseModel(name: "Hip Thrust", repetitions: "12", sets: "4", weight: "60", rest: "90"),
                ExerciseModel(name: "Cable Kickback", repetitions: "12", sets: "4", weight: "60", rest: "90")
            ]
            program1.workouts[1].exercises = [
                ExerciseModel(name: "Hamstring Curl", repetitions: "12", sets: "4", weight: "60", rest: "90"),
                ExerciseModel(name: "Romanian Deadlift", repetitions: "12", sets: "4", weight: "60", rest: "90")
            ]
            program1.workouts[2].exercises = [
                ExerciseModel(name: "Bulgarian Split Squat", repetitions: "12", sets: "4", weight: "60", rest: "90"),
                ExerciseModel(name: "Leg Extension", repetitions: "12", sets: "4", weight: "60", rest: "90")
            ]
            programs.append(program1)
            
            var program2 = ProgramModel(name: "5 x 5", workouts: [])
            program2.workouts = [
                WorkoutModel(name: "Upper Body", exercises: []),
                WorkoutModel(name: "Lower Body", exercises: []),
            ]
            program2.workouts[0].exercises = [
                ExerciseModel(name: "Barbell Row", repetitions: "12", sets: "4", weight: "60", rest: "90"),
                ExerciseModel(name: "Barbell Overhead Press", repetitions: "12", sets: "4", weight: "60", rest: "90")
            ]
            program2.workouts[1].exercises = [
                ExerciseModel(name: "Barbell Back Squat", repetitions: "12", sets: "4", weight: "60", rest: "90"),
                ExerciseModel(name: "Barbell Deadlift", repetitions: "12", sets: "4", weight: "60", rest: "90")
            ]
            programs.append(program2)
        }
        return programs
    }
    
    static func addProgram(programModel: ProgramModel) {
        programs.append(programModel)
    }
    
    static func addWorkout(targetProgram: inout ProgramModel, workoutModel: WorkoutModel) {
        targetProgram.workouts.append(workoutModel)
    }
    
}
