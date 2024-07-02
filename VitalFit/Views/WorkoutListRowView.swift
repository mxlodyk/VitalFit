//
//  WorkoutListRowView.swift
//  VitalFit
//
//  Created by Melody Flavel on 29/5/2024.
//

import SwiftUI

var workout1 = WorkoutModel(name: "Legs", exercises: [])

struct WorkoutListRowView: View {
    
    @EnvironmentObject var workoutListViewModel: WorkoutListViewModel
    let workoutName: String
    @State var workoutID: String
    @Binding var programID: String
    //@Binding var exerciseID: String
    
    //let workout: WorkoutModel
    
    var body: some View {
        HStack {
            NavigationLink(destination: WorkoutView(workoutID: $workoutID, programID: $programID)){
                Text(workoutName)
                .withButtonFormatting()
        }
    }
    Spacer()
    }
}

/*#Preview {
    WorkoutListRowView(workoutName: workout1.name, workoutID: workout1.id, programID: )
        .environmentObject(WorkoutListViewModel())
}*/
