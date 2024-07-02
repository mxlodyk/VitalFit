//
//  AddWorkoutView.swift
//  VitalFit
//
//  Created by Melody Flavel on 29/5/2024.
//

import SwiftUI

struct AddWorkoutView: View {
    
    @State var textFieldText: String = ""
    @Environment(\.presentationMode) var presentationMode
    @State private var navigateToExerciseList = false
    
    
    @Binding var program: ProgramModel
    @State var newWorkout = WorkoutModel(name: "", exercises: [])
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(themeColour))
                    .cornerRadius(10)
                
                // Save Button
                Button(action: {
                    saveButtonPressed()
                    navigateToExerciseList = true
                }) {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(themeColour)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: NewWorkoutView(newProgram: program, newWorkout: $newWorkout), isActive: $navigateToExerciseList) {
                                    EmptyView()
                                }
            }
            .padding(14)
        }
        .navigationTitle("Add a Workout")
    }
    func saveButtonPressed() {
        let programID = program.id
        newWorkout = WorkoutModel(name: textFieldText, exercises: [])
        DataProvider.addWorkout(programID: programID, workoutModel: newWorkout)
    }
}

/*#Preview {
    NavigationView {
        var previewNewProgram = ProgramModel(name: "Program", workouts: [])
        var previewNewWorkoutListViewModel = WorkoutListViewModel()
        AddWorkoutView(newProgram: .constant(previewNewProgram))
    }
}*/
