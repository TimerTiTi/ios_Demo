////
////  ToastView.swift
////  SwiftUI Toast Demo
////
////  Created by Kang Minsang on 2023/12/04.
////
//
//import SwiftUI
//import Lottie
//
//struct ToastView: View {
//    @Binding var isPresenting: Bool
//    var message: String
//    @State private var playbackMode: LottiePlaybackMode = .paused
//    
//    var body: some View {
//        ZStack(alignment: .center) {
//            HStack(spacing: 4) {
//                LottieView(animation: .named("testLottie"))
//                    .playbackMode(playbackMode)
//                    .resizable()
//                    .frame(width: 22, height: 22)
//                Text("06.09")
//                    .font(.custom("Pretendard-SemiBold", size: 14))
//                    .foregroundColor(Color(red: 0.04, green: 0.52, blue: 1))
//                Text(message)
//                    .font(.custom("Pretendard-Medium", size: 14))
//                    .foregroundStyle(Color.black)
//            }
//            .fixedSize()
//            .padding(EdgeInsets(top: 8, leading: 12, bottom: 8, trailing: 20))
//            .background(
//                RoundedRectangle(cornerRadius: 160)
//                    .frame(height: 44)
//                    .foregroundColor(Color.white)
//                    .shadow(color: .gray.opacity(0.12), radius: 4, x: 0, y: 4)
//            )
//        }
//        .onChange(of: isPresenting, { oldValue, newValue in
//            if newValue {
//                playbackMode = .playing(.fromProgress(0, toProgress: 1, loopMode: .playOnce))
//                DispatchQueue.main.asyncAfter(deadline: .now()+2) {
//                    isPresenting = false
//                    playbackMode = .paused
//                }
//            }
//        })
//        .opacity(isPresenting ? 1.0 : 0)
//        .animation(.easeInOut, value: isPresenting)
//    }
//}
//
//#Preview {
//    @State var isPresenting: Bool = true
//    return ToastView(isPresenting: $isPresenting, message: "기록 시작!")
//}
