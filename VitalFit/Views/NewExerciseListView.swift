//  ExerciseListView.swift
//  VitalFit
//  Created by Melody Flavel on 8/10/2023.

import SwiftUI

var program5 = ProgramModel(name: "Big 4", workouts: workouts1) // Preview
var workout5 = WorkoutModel(name: "Legs", exercises: []) // Preview

struct NewExerciseListView: View {
    
    @EnvironmentObject var exerciseListViewModel: ExerciseListViewModel
    @Environment(\.presentationMode) var presentationMode
    @State var newProgram: ProgramModel
    @State var newWorkout: WorkoutModel
    
    var body: some View {
        ScrollView {
            VStack (spacing: 5) {
                ForEach(exerciseListViewModel.exercises) { exercise in
                    ExerciseListRowView(exerciseName: exercise.name, exerciseID: exercise.id)
                }
                    .onDelete(perform: exerciseListViewModel.deleteExercise)
                    .onMove(perform: exerciseListViewModel.moveExercise)
            }
        }
        .navigationTitle("Exercises")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddExerciseView(newProgram: $newProgram, newWorkout: $newWorkout))
        )
        NavigationLink(destination: WorkoutListView()) {
            Text("Done")
                .withButtonFormatting()
        }
        .transition(.slideFromTrailing)
    }
}
    
        
    


#Preview {
    NavigationView{
        NewExerciseListView(newProgram: program5, newWorkout: workout5)
            .environmentObject(ExerciseListViewModel())
    }
}
