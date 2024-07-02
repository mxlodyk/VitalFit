//
//  WorkoutView.swift
//  VitalFit
//
//  Created by Melody Flavel on 29/5/2024.
//

import SwiftUI

struct WorkoutView: View {
    
    @Binding var workoutID: String
    @Binding var programID: String
    //@State var exerciseID: String
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
                                    if workout.id == workoutID {
                                        ForEach(workout.exercises) { exercise in
                                            WorkoutListRowView(workoutName: workout.name, workoutID: workout.id, programID: $programID)
                                        }
                                    }
                                }
                            }
                        }
                        .navigationBarBackButtonHidden(true)
                        .navigationBarItems(
                            leading:
                                NavigationLink(destination: HomeView()) {
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
    }
}

/*#Preview {
    NavigationView{
        WorkoutView(workoutID: &workoutID)
    }
}*/
