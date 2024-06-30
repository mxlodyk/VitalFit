//
//  TestView.swift
//  VitalFit
//
//  Created by Melody Flavel on 3/6/2024.
//

import SwiftUI

struct TestView: View {
    
    let programs: [ProgramModel] = DataProvider.getPrograms()
    
    var body: some View {
        Text("Test")
        let secondProgram = programs[1]
        let firstExercise = secondProgram.workouts[0].exercises[0].name
        let size = programs[0].workouts.count
        Text("Program: \(programs[1].name)")
        Text("First exercise in Glutes workout: \(firstExercise)")
        Text("Size of Melody's workout array: \(size)")
        ForEach(programs[1].workouts) { workout in
                        // Iterate over the exercises in each workout
                        ForEach(workout.exercises) { exercise in
                            // Display exercise details
                            Text("Workout: \(workout.name), Exercise: \(exercise.name)")
                        }
                    }
    }
}

#Preview {
    TestView()
}
