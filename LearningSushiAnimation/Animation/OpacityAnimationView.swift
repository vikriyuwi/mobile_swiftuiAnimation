//
//  OpacityAnimationView.swift
//  LearningSushiAnimation
//
//  Created by win win on 29/04/24.
//

import SwiftUI

struct OpacityAnimationView: View {
    @State var opacityScale:Double = 0.5
    @State var scaleEffect:Double = 0.8
    var body: some View {
        Image("AvaDefault")
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            .opacity(opacityScale)
            .scaleEffect(scaleEffect)
            .onAppear {
                let baseAnimation = Animation.easeInOut(duration: 2)
                let repeated = baseAnimation.repeatForever(autoreverses: true)

                withAnimation(repeated) {
                    opacityScale = 1
                    scaleEffect = 1
                }
            }
            
    }
}

#Preview {
    OpacityAnimationView()
}
