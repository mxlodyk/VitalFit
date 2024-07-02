//  ListRowView.swift
//  VitalFit
//  Created by Melody Flavel on 8/10/2023.

import SwiftUI

struct ExerciseListRowView: View {
    
    @EnvironmentObject var exerciseListViewModel: ExerciseListViewModel
    let exerciseName: String
    @State var exerciseID: String
    @Binding var programID: String
    @Binding var workoutID: String
    
    var body: some View {
            HStack {
                NavigationLink(destination: ExerciseView(exerciseID: $exerciseID, programID: $programID, workoutID: $workoutID)){
                    Text(exerciseName)
                    .withButtonFormatting()
            }
            .padding(.leading, 20)
            .padding(.trailing, 20)
        }
        Spacer()
    }
}

/*#Preview {
    ExerciseListRowView(exerciseName: exercise1.name, exerciseID: exercise1.id)
        .environmentObject(ExerciseListViewModel())
}*/

