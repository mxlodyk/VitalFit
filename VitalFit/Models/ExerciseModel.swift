//  ExerciseModel.swift
//  Fitness
//  Created by Melody Flavel on 11/10/2023.

import Foundation

struct ExerciseModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let repetitions: String
    let sets: String
    let weight: String
    let rest: String
}
