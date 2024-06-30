//
//  NewProgramView.swift
//  VitalFit
//
//  Created by Melody Flavel on 30/6/2024.
//

import SwiftUI

var program2 = ProgramModel(name: "Big 4", workouts: workouts1) // Preview

struct NewProgramView: View {
    
    @State var newProgram: ProgramModel
    
    var body: some View {
        ZStack {
            Color.backgroundColour
            .edgesIgnoringSafeArea(.all)
            VStack {
                ScrollView {
                    VStack (spacing: 5) {
                        Text("\(newProgram.name)")
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
                NavigationLink(destination: AddWorkoutView(newProgram: $newProgram)) {
                    Image("AddIcon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                }
            }
        }
    }
}

#Preview {
    NewProgramView(newProgram: program2)
}
