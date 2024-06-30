//  ExerciseModel.swift
//  VitalFit
//  Created by Melody Flavel on 11/10/2023.

import Foundation

struct ExerciseModel: Identifiable {
    internal let id: String = UUID().uuidString
    internal var name: String
    internal var repetitions: String
    internal var sets: String
    internal var weight: String
    internal var rest: String
}

