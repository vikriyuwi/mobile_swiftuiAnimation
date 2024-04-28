//
//  ContentView.swift
//  LearningSushiAnimation
//
//  Created by win win on 28/04/24.
//

import SwiftUI

struct ContentView: View {
    let column = Array(repeating: GridItem(.fixed(120)), count: 2)
    
    var body: some View {
        LazyVGrid(columns: column, spacing: 20) {
            BreathAnimationView()
            FlyingAnimationView()
            SwingAnimationView()
        }
    }
}

#Preview {
    ContentView()
}
