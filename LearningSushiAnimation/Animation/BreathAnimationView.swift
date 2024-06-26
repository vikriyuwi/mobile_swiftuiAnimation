//
//  BreathAnimationView.swift
//  LearningSushiAnimation
//
//  Created by win win on 28/04/24.
//

import SwiftUI

struct BreathAnimationView: View {
    // add this var
    @State var breathScale:Double = 0.9
    
    
    var body: some View {
        Image("AvaDefault")
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
        
            // add this line
            .scaleEffect(breathScale)
            .onAppear {
                let baseAnimation = Animation.spring(duration: 2)
                let repeated = baseAnimation.repeatForever(autoreverses: true)

                withAnimation(repeated) {
                    breathScale = 1
                }
            }
            // to this line
            
    }
}

#Preview {
    BreathAnimationView()
}
