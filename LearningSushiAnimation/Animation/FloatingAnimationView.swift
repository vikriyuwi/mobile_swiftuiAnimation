//
//  FloatingAnimationView.swift
//  LearningSushiAnimation
//
//  Created by win win on 28/04/24.
//

import SwiftUI

struct FloatingAnimationView: View {
    // add this var
    @State var swing:Angle = Angle(degrees: -10)
    @State var floating:CGSize = CGSize(width: 0, height: -5)
    
    var body: some View {
        Image("AvaDefault")
            .resizable()
            .scaledToFit()
        
            // add this line
            .offset(floating)
            .rotationEffect(swing)
            .frame(width: 100, height: 100)
            .onAppear {
                let baseAnimation = Animation.easeInOut(duration: 2)
                let repeated = baseAnimation.repeatForever(autoreverses: true)

                withAnimation(repeated) {
                    swing = Angle(degrees: 10)
                }
            }
            .onAppear {
                let baseAnimation2 = Animation.easeInOut(duration: 1)
                let repeated2 = baseAnimation2.repeatForever(autoreverses: true)
                
                withAnimation(repeated2) {
                    floating = CGSize(width: 0, height: 5)
                }
            }
            // to this line
            
    }
}

#Preview {
    FloatingAnimationView()
}
