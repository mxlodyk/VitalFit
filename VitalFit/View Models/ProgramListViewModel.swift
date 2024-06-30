//  ProgramListViewModel.swift
//  VitalFit
//  Created by Melody Flavel on 29/5/2024.

import Foundation
import SwiftUI

class ProgramListViewModel: ObservableObject {
    
    @Published var programs: [ProgramModel] = []
    var workouts: [WorkoutModel] = []
    var workoutListViewModel = WorkoutListViewModel()
    
    init() {
        getPrograms()
    }
    
    func getPrograms() -> [ProgramModel] {
        //let newPrograms = [
        programs.append(ProgramModel(name: "Melody's Program", workouts: []))
        let firstID = programs[0].id
        programs[0].workouts = workoutListViewModel.getWorkouts(programID: firstID)
        programs.append(ProgramModel(name: "5 x 5", workouts: []))
        let secondID = programs[1].id
        programs[1].workouts = workoutListViewModel.getWorkouts(programID: secondID)
        //]
        return programs
    }
    
    func addPrograms(newProgram: [ProgramModel]) {
        programs.append(contentsOf:newProgram)
    }
    
    func deleteProgram(indexSet: IndexSet){
        programs.remove(atOffsets: indexSet)
    }
    func moveProgram(from: IndexSet, to: Int){
        programs.move(fromOffsets: from, toOffset: to)
    }
    
    func addProgram(programModel: ProgramModel) {
        programs.append(programModel)
    }
}
