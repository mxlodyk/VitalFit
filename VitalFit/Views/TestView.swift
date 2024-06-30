//
//  TestView.swift
//  VitalFit
//
//  Created by Melody Flavel on 3/6/2024.
//

import SwiftUI

var program6 = ProgramModel(name: "Big 4", workouts: workouts1) // Preview
var workout6 = WorkoutModel(name: "Legs", exercises: []) // Preview

struct TestView: View {
    
    //@State var newProgram: ProgramModel
    //@State var newWorkout: WorkoutModel
    
    var body: some View {
        
        //let programID = newProgram.id
        //let workoutID = newWorkout.id
        
        List {
            ForEach(DataProvider.programs, id: \.name) { program in
                Section(header: Text(program.name)) {
                    ForEach(program.workouts, id: \.name) { workout in
                        Text("\(workout.name)")
                        ForEach(workout.exercises, id: \.name) { exercise in
                            Text("\(exercise.name)")
                        }
                    }
                }
            }
        }
        
    }
}

#Preview {
    TestView()
}
