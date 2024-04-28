//
//  SwingAnimationView.swift
//  LearningSushiAnimation
//
//  Created by win win on 28/04/24.
//

import SwiftUI

struct SwingAnimationView: View {
    @State var swing:Angle = Angle(degrees: -16)
    var body: some View {
        Image("AvaDefault")
            .resizable()
            .scaledToFit()
            .rotationEffect(swing)
            .frame(width: 100, height: 100)
            .onAppear {
                let baseAnimation = Animation.easeInOut(duration: 1)
                let repeated = baseAnimation.repeatForever(autoreverses: true)

                withAnimation(repeated) {
                    swing = Angle(degrees: 16)
                }
            }
            
    }
}

#Preview {
    SwingAnimationView()
}
