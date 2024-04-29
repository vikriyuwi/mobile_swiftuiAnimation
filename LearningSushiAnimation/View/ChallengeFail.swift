//
//  ChallengeFail.swift
//  LearningSushiAnimation
//
//  Created by win win on 29/04/24.
//

import SwiftUI

struct ChallengeFail: View {
    @State var swing:Angle = Angle(degrees: -16)
    var body: some View {
        ZStack {
            Image("bg fail")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            Image("sad_user")
                .resizable()
                .scaledToFit()
                .rotationEffect(swing)
                .frame(width: 200, height: 200)
                .onAppear {
                    let baseAnimation = Animation.easeInOut(duration: 1)
                    let repeated = baseAnimation.repeatForever(autoreverses: true)

                    withAnimation(repeated) {
                        swing = Angle(degrees: 16)
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
    ChallengeFail()
}
