//
//  Timer.swift
//  LearningSushiAnimation
//
//  Created by win win on 30/04/24.
//

import SwiftUI

struct Timer: View {
    var buttonWidth = 60
    @State var isButtonEnabled = true
    @State var timerTrim:CGFloat = 0
    var body: some View {
        ZStack {
            Image("bg success")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            Button {
                guard isButtonEnabled else { return }
                isButtonEnabled = false
                
                withAnimation(Animation.easeIn(duration: 2)) {
                    timerTrim = 1
                }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    isButtonEnabled = true
                    timerTrim = 0
                }
                

            } label: {
                ZStack {
                    Image("add_button")
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(isButtonEnabled ? 1 : 0)
                        .frame(width: CGFloat(buttonWidth))
                    Circle()
                        .trim(from: 0, to: timerTrim)
                        .stroke(style: StrokeStyle(lineWidth: CGFloat(buttonWidth/4), lineCap: .round, lineJoin: .round))
                        .background(Color.clear)
                        .rotationEffect(Angle(degrees: -90))
                        .scaleEffect(isButtonEnabled ? 0 : 1)
                        
                }
                .frame(width: CGFloat(buttonWidth), height: CGFloat(buttonWidth))
            }
            .position(
                x: UIScreen.main.bounds.width - CGFloat(buttonWidth) - 16,
                y: UIScreen.main.bounds.height - CGFloat(buttonWidth) - 116
            )
        }
    }
}

#Preview {
    Timer()
}
