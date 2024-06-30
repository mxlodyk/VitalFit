//  AddExercisesView.swift
//  VitalFit
//  Created by Melody Flavel on 9/10/2023.

import SwiftUI

struct AddExerciseView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var exerciseListViewModel: ExerciseListViewModel
    
    @State var textFieldText0: String = ""
    @State var textFieldText1: String = ""
    @State var textFieldText2: String = ""
    @State var textFieldText3: String = ""
    @State var textFieldText4: String = ""
    
    var body: some View {
        
        ScrollView{
            VStack {
                Group {
                    Text("EXERCISE")
                        .withTextFormatting()
                    TextField("", text: $textFieldText0)
                        .withTextFieldFormatting()
                        .autocapitalization(.allCharacters)
                    
                    Text("REPETITIONS")
                        .withTextFormatting()
                    TextField("", text: $textFieldText1)
                        .withTextFieldFormatting()
                    
                    Text("SETS")
                        .withTextFormatting()
                    TextField("", text: $textFieldText2)
                        .withTextFieldFormatting()
                }
                Group {
                    Text("WEIGHT")
                        .withTextFormatting()
                    
                    HStack {
                        TextField("", text: $textFieldText3)
                            .withTextFieldFormatting()
                        
                        Menu("KG") {
                            Text("LB")
                        }
                        .withTextFormatting()
                    }
                    .padding(.leading, 130)
                    .padding(.trailing, 100)
                    
                    Text("REST")
                        .withTextFormatting()
                    
                    HStack {
                        TextField("", text: $textFieldText4)
                            .withTextFieldFormatting()
                        
                        Menu("SEC") {
                            Text("MIN")
                        }
                        .withTextFormatting()
                    }
                    .padding(.leading, 130)
                    .padding(.trailing, 90)
                }
                
                Button(action: saveButtonPressed, label: {
                    Text("Save".uppercased())
                        .withButtonFormatting()
                        .padding(.top, 20)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                })
            }
            .navigationTitle("Add Exercise")
        }
    }
    
    func saveButtonPressed() {
        exerciseListViewModel.addExercise(name: textFieldText0, repetitions: textFieldText1, sets: textFieldText2, weight: textFieldText3, rest: textFieldText4)
        presentationMode.wrappedValue.dismiss()
    }
}

#Preview {
    NavigationView{
        AddExerciseView()
    }
    .environmentObject(ExerciseListViewModel())
}
