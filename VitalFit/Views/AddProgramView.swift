//  AddProgramView.swift
//  VitalFit
//  Created by Melody Flavel on 29/5/2024.

import SwiftUI

struct AddProgramView: View {
    
    @State private var navigateToNewProgramView = false
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var programListViewModel: ProgramListViewModel
    @State var newProgramName: String = ""
    @State var programName: String = ""
    //@EnvironmentObject var programModel: ProgramModel
    @State var newProgram = ProgramModel(name: "", workouts: [])
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $newProgramName)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(themeColour))
                    .cornerRadius(10)
                Button(action: {
                    saveButtonPressed()
                    navigateToNewProgramView = true
                }) {
                    Text("Next".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(themeColour)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: NewProgramView(newProgram: newProgram), isActive: $navigateToNewProgramView) {
                                    EmptyView()
                                }
            }
            .padding(14)
        }
        .navigationTitle("Add a Program")
    }
    func saveButtonPressed() {
        newProgram = ProgramModel(name: newProgramName, workouts: [])
        DataProvider.addProgram(programModel: newProgram)
        //@State var newWorkoutListViewModel: WorkoutListViewModel
        //presentationMode.wrappedValue.dismiss()
        //presentationMode.wrappedValue.dismiss()
    }
}

#Preview {
    NavigationView{
        AddProgramView()
    }
}
