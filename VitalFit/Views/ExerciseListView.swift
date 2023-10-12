//  ExerciseListView.swift
//  VitalFit
//  Created by Melody Flavel on 8/10/2023.

import SwiftUI

struct ExerciseListView: View {
    
    @EnvironmentObject var exerciseListViewModel: ExerciseListViewModel
    
    var body: some View {
        ScrollView {
            Image("Exercises")
                .padding(.bottom, 20)
            VStack (spacing: 5) {
                ForEach(exerciseListViewModel.exercises) { exercise in
                        ExerciseListRowView(exerciseName: exercise.name)
                }
                    .onDelete(perform: exerciseListViewModel.deleteExercise)
                    .onMove(perform: exerciseListViewModel.moveExercise)
            }
        }
        NavigationLink("Add", destination: AddExerciseView())
    }
}
    
        
    


#Preview {
    ExerciseListView()
    .environmentObject(ExerciseListViewModel())
}
