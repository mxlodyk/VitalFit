//  ExerciseView.swift
//  VitalFit
//  Created by Melody Flavel on 12/10/2023.

import SwiftUI

var exercise2 = ExerciseModel(name: "Hip Thrusts", repetitions: "12", sets: "4", weight: "50", rest: "1")

struct ExerciseView: View {
    
    @Binding var exerciseID: String
    @EnvironmentObject var exerciseListViewModel: ExerciseListViewModel
    
    var body: some View {
        
        VStack (spacing: 80) {
                ForEach(exerciseListViewModel.exercises) { exercise in
                    if exercise.id == exerciseID {
                        Text(exercise.name)
                            .withButtonFormatting()
                        HStack {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color(themeColour), lineWidth: 2)
                                .withFrameFormatting()
                                
                            Text(exercise.repetitions)
                                .padding(.leading, -66)
                                .font(.largeTitle)
                                .foregroundColor(themeColour)
                            Spacer()
                            Text("REPETITIONS")
                                .font(.headline)
                                .padding(.trailing, 70)
                                .foregroundColor(themeColour)
                        }
                        HStack {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color(themeColour), lineWidth: 2)
                                .frame(width: 80, height: 80)
                                .padding(.leading, 70)
                            Text(exercise.sets)
                                .padding(.leading, -58)
                                .font(.largeTitle)
                                .foregroundColor(themeColour)
                            Spacer()
                            Text("SETS")
                                .font(.headline)
                                .padding(.trailing, 70)
                                .foregroundColor(themeColour)
                        }
                        HStack {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color(themeColour), lineWidth: 2)
                                .frame(width: 80, height: 80)
                                .padding(.leading, 70)
                            Text(exercise.weight)
                                .padding(.leading, -66)
                                .font(.largeTitle)
                                .foregroundColor(themeColour)
                            Spacer()
                            Text("KG")
                                .font(.headline)
                                .padding(.trailing, 70)
                                .foregroundColor(themeColour)
                        }
                        HStack {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color(themeColour), lineWidth: 2)
                                .frame(width: 80, height: 80)
                                .padding(.leading, 70)
                            Text(exercise.rest)
                                .padding(.leading, -66)
                                .font(.largeTitle)
                                .foregroundColor(themeColour)
                            Spacer()
                            Text("SEC")
                                .font(.headline)
                                .padding(.trailing, 70)
                                .foregroundColor(themeColour)
//                        Text("Timer Count \(timerCount)")
//                                .onAppear {
//                                    let _ = Timer.scheduledTimer(withTimeInterval: timerInterval, repeats: true) {
//                                        timer in
//                                        timerCount -= 1
//                                    }
//                                }
                        }
                    }
                }
            }
        .padding(.leading, 20)
        .padding(.trailing, 20)
    }
}

//#Preview {
//    
//    let exerciseListViewModel = ExerciseListViewModel()
//            exerciseListViewModel.exercises = [
//                ExerciseModel(id: "1", name: "Exercise 1", repetitions: "12", sets: "3", weight: "50", rest: "1"),
//                ExerciseModel(id: "2", name: "Exercise 2", repetitions: "10", sets: "4", weight: "40", rest: "2") ]
//                
//    ExerciseView(exerciseID: .constant("1"))
//        .environmentObject(ExerciseListViewModel())
//        .previewLayout(.sizeThatFits)
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let exerciseListViewModel = ExerciseListViewModel()
        exerciseListViewModel.exercises = [
            ExerciseModel(name: "HIP THRUST", repetitions: "12", sets: "3", weight: "50", rest: "90"),
            ExerciseModel(name: "GLUTE KICKBACK", repetitions: "10", sets: "4", weight: "25", rest: "90")
            // Add more exercises as needed
        ]
        return ExerciseView(exerciseID: .constant("1"))
            .environmentObject(exerciseListViewModel)
            .previewLayout(.sizeThatFits)
    }
}
