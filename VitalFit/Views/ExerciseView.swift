//  ExerciseView.swift
//  VitalFit
//  Created by Melody Flavel on 12/10/2023.

import SwiftUI

struct ExerciseView: View {
    
    @Binding var exerciseID: String
    @EnvironmentObject var exerciseListViewModel: ExerciseListViewModel
    
    var body: some View {
        Text(exerciseID)
    }
}

#Preview {
    ExerciseView(exerciseID: .constant("Preview"))
}
