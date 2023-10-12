//  HomeView.swift
//  VitalFit
//  Created by Melody Flavel on 12/10/2023.

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack (spacing: 20) {
            Image("VitalFit Logo")
            NavigationLink(destination: ExerciseListView()) {
                Text("EXERCISE")
                    .withButtonFormatting()
            }
        }
        .padding(.bottom, 600)
    }
}

#Preview {
        HomeView()
}
