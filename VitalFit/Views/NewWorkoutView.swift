//
//  NewWorkoutView.swift
//  VitalFit
//
//  Created by Melody Flavel on 30/6/2024.
//

import SwiftUI

var program3 = ProgramModel(name: "Big 4", workouts: workouts1) // Preview
var workout3 = WorkoutModel(name: "Legs", exercises: []) // Preview

struct NewWorkoutView: View {
    
    @State var newProgram: ProgramModel
    @Binding var newWorkout: WorkoutModel
    //@Binding var navigateToNewWorkoutView: Bool
    //workoutID: String
    
    var body: some View {
        ZStack {
            Color.backgroundColour
                .edgesIgnoringSafeArea(.all)
            VStack {
                ScrollView {
                    VStack (spacing: 10) {
                        let workoutID = newWorkout.id
                        let programID = newProgram.id
                        Text("\(newWorkout.name)")
                        ForEach(DataProvider.programs) { program in
                            if program.id == programID {
                                ForEach(program.workouts) { workout in
                                    if workout.id == workoutID {
                                        ForEach(workout.exercises) { exercise in
                                        Text("\(exercise.name)")
                                    }
                                }
                            }
                        }
                            //ProgramListRowView(programName: program.name, programID: program.id)
                            //Text("\(program.id)")
                        }
                        }
                        .navigationBarBackButtonHidden(true)
                        .navigationBarItems(
                            leading:
                                NavigationLink(destination: HomeView()) {
                                    Image("BackIcon")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 30, height: 30)
                                },
                            trailing:
                                NavigationLink(destination: ProgramListView()) {
                                Image("CheckIcon")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                            }
                        )
                        }
                Spacer()
                NavigationLink(destination: AddExerciseView(newProgram: $newProgram, newWorkout: $newWorkout)) {
                        Image("AddIcon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 80)
                    }
                }
            } // Zstack ends
    }
}
    
    /*#Preview {
        NewWorkoutView(newProgram: .constant("1"), newWorkout: .constant("1"))
    }*/
