//  ListRowView.swift
//  VitalFit
//  Created by Melody Flavel on 8/10/2023.

import SwiftUI

var exercise1 = ExerciseModel(name: "Hip Thrusts", repetitions: "12", sets: "4", weight: "50", rest: "1")

struct ExerciseListRowView: View {
    
    @EnvironmentObject var exerciseListViewModel: ExerciseListViewModel
    let exerciseName: String
    @State var exerciseID: String
    
    var body: some View {
            HStack {
                NavigationLink(destination: ExerciseView(exerciseID: $exerciseID)){
                    Text(exerciseName)
                    //Text(exerciseID)
                    .withButtonFormatting()
            }
        }
        Spacer()
    }
}

#Preview {
    ExerciseListRowView(exerciseName: exercise1.name, exerciseID: exercise1.id)
        .environmentObject(ExerciseListViewModel())
}

