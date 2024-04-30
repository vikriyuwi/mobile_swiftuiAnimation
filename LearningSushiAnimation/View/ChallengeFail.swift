//
//  ChallengeFail.swift
//  LearningSushiAnimation
//
//  Created by win win on 29/04/24.
//

import SwiftUI

struct ChallengeFail: View {
    @State private var countdown: Int = 0
    @State private var timer: Timer?
    @State private var munculTimer:Bool = false
    @State var swing:Angle = Angle(degrees: -16)
    @State var widthCountDown:CGFloat = 0
    @State var colorCountDown:Color = .green
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
            if munculTimer {
                VStack(alignment: .leading) {
                    Spacer()
                    HStack {
                        HStack {
                            
                        }
                        .frame(
                            maxWidth: widthCountDown,
                            maxHeight: 50
                        )
                        .background(colorCountDown)
                        .cornerRadius(20)
                        .ignoresSafeArea()
                        Spacer()
                    }
                    .frame(maxWidth: UIScreen.main.bounds.size.width, maxHeight: 50)
                    .background(.accent)
                    .cornerRadius(20)
                    .ignoresSafeArea()
                }
                .onAppear {
                    withAnimation(Animation.easeOut(duration: 5)) {
                        widthCountDown = UIScreen.main.bounds.size.width
                        colorCountDown = .red
                    }
                }
            }
            Button {
//                startTimer()
                munculTimer = true
            } label: {
                Text("mulai")
            }
            .buttonStyle(.bordered)
        }
        .frame(maxWidth: UIScreen.main.bounds.size.width, maxHeight: .infinity)
        .ignoresSafeArea()
//        .onTapGesture {
//            // restart statement
//            print("restart")
//        }
    }
    
//    func startTimer() {
//            // Inisialisasi timer jika belum ada
//            if timer == nil {
//                timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
//                    // Kurangi countdown setiap detik
//                    if self.countdown < 45 {
//                        self.countdown += 1
//                    } else {
//                        // Hentikan timer ketika countdown mencapai 0
//                        self.timer?.invalidate()
//                        self.timer = nil
//                    }
//                }
//            }
//        }
}

#Preview {
    ChallengeFail()
}
