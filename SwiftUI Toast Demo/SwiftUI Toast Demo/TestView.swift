//
//  TestView.swift
//  SwiftUI Toast Demo
//
//  Created by Ryeong on 6/24/24.
//

import SwiftUI

protocol ToastViewProtocol: View {
    var isPresenting: Bool { get set }
}

struct ToastView<Content: View>: View {
    @Binding var isPresenting: Bool
    let content: (_ isPresenting: Binding<Bool>) -> Content
    
    var body: some View {
        ZStack {
            content($isPresenting)
        }
        .onChange(of: isPresenting, { oldValue, newValue in
            if !newValue {
                return
            }
            DispatchQueue.main.asyncAfter(deadline: .now()+1) {
                withAnimation {
                    self.isPresenting = false
                }
            }
        })
        .opacity(isPresenting ? 1.0 : 0)
        .animation(.easeInOut(duration: 0.3), value: isPresenting)
    }
    
    func show() {
        guard isPresenting == false else { return }
        withAnimation {
            self.isPresenting = true
        }
    }
}

#Preview {
    ToastView(isPresenting: .constant(true)) { isPresenting in
        newRecordToastView(isPresenting: isPresenting)
    }
}


import Lottie

struct newRecordToastView: ToastViewProtocol {
    @Binding var isPresenting: Bool
    @State private var playbackMode: LottiePlaybackMode = .paused
    
    var body: some View {
        ZStack(alignment: .center) {
            HStack(spacing: 4) {
                LottieView(animation: .named("testLottie"))
                    .playbackMode(playbackMode)
                    .resizable()
                    .frame(width: 22, height: 22)
                    .onChange(of: isPresenting) { oldValue, newValue in
                        if newValue {
                            playbackMode = .playing(.fromProgress(0, toProgress: 1, loopMode: .playOnce))
                        } else {
                            playbackMode = .paused
                        }
                    }
                Text(Date.now.description)
                Text("기록 시작!")
            }
            .padding(EdgeInsets(top: 8,
                                leading: 12,
                                bottom: 8,
                                trailing: 20))
            .background(
                RoundedRectangle(cornerRadius: 160)
                    .frame(height: 44)
                    .foregroundColor(Color.white)
                    .shadow(color: .gray.opacity(0.12),
                            radius: 4, x: 0, y: 4)
            )
        }
    }
}

#Preview {
    newRecordToastView(isPresenting: .constant(false))
}
