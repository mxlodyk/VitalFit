//  ProgramListRowView.swift
//  VitalFit
//  Created by Melody Flavel on 29/5/2024.

import SwiftUI

var workouts1: [WorkoutModel] = []
var program1 = ProgramModel(name: "Big 4", workouts: workouts1) // Preview

struct ProgramListRowView: View {
    
    @EnvironmentObject var programListViewModel: ProgramListViewModel
    let programName: String
    @State var programID: String
    //@Binding var exerciseID: String
    
    var body: some View {
        HStack {
            NavigationLink(destination: ProgramView(programID: $programID)){
                Text(programName)
                .withButtonFormatting()
        }
    }
    Spacer()
    }
}

/*#Preview {
    ProgramListRowView(programName: program1.name, programID: program1.id, selectedProgram: selectedProgram)
}*/
