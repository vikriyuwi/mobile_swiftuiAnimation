//
//  FlyingAnimationView.swift
//  LearningSushiAnimation
//
//  Created by win win on 28/04/24.
//

import SwiftUI

struct FlyingAnimationView: View {
    // add this var
    @State var flyingOffset:CGSize = CGSize(width: 0, height: 0)
    
    var body: some View {
        Image("AvaDefault")
            .resizable()
            .scaledToFit()
        
            // add this line
            .offset(flyingOffset)
            .frame(width: 100, height: 100)
            .onAppear {
                let baseAnimation = Animation.easeInOut(duration: 1)
                let repeated = baseAnimation.repeatForever(autoreverses: true)

                withAnimation(repeated) {
                    flyingOffset = CGSize(width: 0, height: -24)
                }
            }
            // to this line
            
    }
}

#Preview {
    FlyingAnimationView()
}
