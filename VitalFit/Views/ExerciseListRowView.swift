//  ListRowView.swift
//  VitalFit
//  Created by Melody Flavel on 8/10/2023.

import SwiftUI

var exercise1 = ExerciseModel(name: "HIP THRUST", repetitions: "12", sets: "4", weight: "50", rest: "1")

struct ExerciseListRowView: View {
    
    @EnvironmentObject var exerciseListViewModel: ExerciseListViewModel
    let exerciseName: String
    @State var exerciseID: String
    @Binding var programID: String
    @Binding var workoutID: String
    
    var body: some View {
            HStack {
                NavigationLink(destination: ExerciseView(programID: $programID, workoutID: $workoutID, exerciseID: $exerciseID)){
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

