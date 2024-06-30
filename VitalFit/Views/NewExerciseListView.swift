//  ExerciseListView.swift
//  VitalFit
//  Created by Melody Flavel on 8/10/2023.

import SwiftUI

struct NewExerciseListView: View {
    
    @EnvironmentObject var exerciseListViewModel: ExerciseListViewModel
    @Environment(\.presentationMode) var presentationMode
    
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
                NavigationLink("Add", destination: AddExerciseView())
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
        NewExerciseListView()
            .environmentObject(ExerciseListViewModel())
    }
}
