//
//  ProgramView.swift
//  VitalFit
//
//  Created by Melody Flavel on 29/5/2024.
//

import SwiftUI

struct ProgramView: View {
    
    @Binding var programID: String
    @EnvironmentObject var programListViewModel: ProgramListViewModel
    @EnvironmentObject var workoutListViewModel: WorkoutListViewModel
    let programs: [ProgramModel] = DataProvider.getPrograms()
    
    var body: some View {
        ForEach(DataProvider.programs) { program in
            if program.id == programID {
                ForEach(program.workouts) { workout in
                    //let tempText = program.workouts[0].name
                    //Text("\(tempText)")
                    Text("\(workout.name)")
                }
            }
        }
    }
}

#Preview {
    ProgramView(programID: .constant("1"))
}
