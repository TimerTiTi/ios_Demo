//
//  ToastViewModifier.swift
//  SwiftUI Toast Demo
//
//  Created by Kang Minsang on 2023/12/04.
//

//import Foundation
//import SwiftUI
//
//struct ToastViewModifier: ViewModifier {
//    @Binding var isPresenting: Bool
//    @Binding var backgroundColor: Color
//    var message: String
//    
//    func body(content: Content) -> some View {
//        ZStack {
//            backgroundColor
//                .ignoresSafeArea()
//            VStack {
//                ToastView(isPresenting: $isPresenting, message: message)
//                content
//                Spacer()
//            }
//        }
//    }
//}
//
//extension View {
//    func showToast(isPresenting: Binding<Bool>, message: String, backgroundColor: Binding<Color>) -> some View {
//        return modifier(ToastViewModifier(isPresenting: isPresenting, backgroundColor: backgroundColor, message: message))
//    }
//}
