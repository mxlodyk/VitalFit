//
//  ProgramView.swift
//  VitalFit
//
//  Created by Melody Flavel on 29/5/2024.
//

import SwiftUI

struct WorkoutListView: View {
    
    @Binding var programID: String
    let programs: [ProgramModel] = DataProvider.getPrograms()
    
    var body: some View {
        ZStack {
            Color.backgroundColour
            .edgesIgnoringSafeArea(.all)
            VStack {
                ScrollView {
                    VStack (spacing: 5) {
                        ForEach(DataProvider.programs) { program in
                            if program.id == programID {
                                ForEach(program.workouts) { workout in
                                    WorkoutListRowView(workoutName: workout.name, workoutID: workout.id, programID: $programID)
                                }
                            }
                        }
                        //.onDelete(perform: programListViewModel.deleteProgram) ****************************
                        //.onMove(perform: programListViewModel.moveProgram)
                    }
                }
                .navigationBarBackButtonHidden(true)
                .navigationBarItems(
                    leading:
                    NavigationLink(destination: ProgramListView()) {
                        Image("BackIcon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                    },
                    trailing: Image("EditIcon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                )
                Spacer()
                NavigationLink(destination: AddProgramView()) {
                    Image("AddIcon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                }
            }
        }
    }
}

/*#Preview {
    ProgramView(programID: .constant("1"), )
}*/
