//
//  Animation.swift
//  AnimationApp
//
//  Created by Anton Kuzmin on 17.03.2023.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getRandomAnimation() -> Animation {
        Animation(
            preset: DataStore.shared.presets.randomElement()?.rawValue ?? "pop",
            curve: DataStore.shared.presets.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 1...2),
            duration: Double.random(in: 1...2),
            delay: 0.30
        )
    }
}
