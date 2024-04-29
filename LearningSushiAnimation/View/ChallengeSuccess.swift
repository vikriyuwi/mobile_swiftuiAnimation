//
//  ChallengeSuccess.swift
//  LearningSushiAnimation
//
//  Created by win win on 29/04/24.
//

import SwiftUI

struct ChallengeSuccess: View {
    @State var swing:Angle = Angle(degrees: -20)
    @State var floating:CGSize = CGSize(width: 0, height: -10)
    var body: some View {
        ZStack {
            Image("bg success")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            Image("happy_user")
                .resizable()
                .scaledToFit()
                .offset(floating)
                .rotationEffect(swing)
                .frame(width: 200, height: 200)
                .onAppear {
                    let baseAnimation = Animation.easeInOut(duration: 0.5)
                    let repeated = baseAnimation.repeatForever(autoreverses: true)

                    withAnimation(repeated) {
                        swing = Angle(degrees: 20)
                    }
                }
                .onAppear {
                    let baseAnimation2 = Animation.easeInOut(duration: 0.25)
                    let repeated2 = baseAnimation2.repeatForever(autoreverses: true)
                    
                    withAnimation(repeated2) {
                        floating = CGSize(width: 0, height: 10)
                    }
                }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
        .onTapGesture {
            // restart statement
            print("restart")
        }
    }
}

#Preview {
    ChallengeSuccess()
}
