//
//  WorkoutView.swift
//  VitalFit
//
//  Created by Melody Flavel on 29/5/2024.
//

import SwiftUI

struct WorkoutView: View {
    var body: some View {
        VStack (spacing: 20) {
            Image("VitalFit Logo")
            NavigationLink(destination: ExerciseListView()) {
                Text("WORKOUT 1")
                    .withButtonFormatting()
            }
            .padding(.leading, 20)
            .padding(.trailing, 20)
        }
        .padding(.bottom, 600)
    }
}

#Preview {
    NavigationView{
        WorkoutView()
    }
}
