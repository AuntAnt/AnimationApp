//
//  DataStore.swift
//  AnimationApp
//
//  Created by Anton Kuzmin on 17.03.2023.
//

import SpringAnimation

final class DataStore {
    static let shared = DataStore()
    
    let presets = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
