//  ProgramModel.swift
//  VitalFit
//  Created by Melody Flavel on 29/5/2024.

import Foundation

struct ProgramModel: Identifiable {
    internal let id: String = UUID().uuidString
    internal var name: String
    internal var workouts: [WorkoutModel]
}
