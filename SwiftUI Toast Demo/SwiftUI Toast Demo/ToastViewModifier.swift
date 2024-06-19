//
//  ToastViewModifier.swift
//  SwiftUI Toast Demo
//
//  Created by Kang Minsang on 2023/12/04.
//

import Foundation
import SwiftUI

struct ToastViewModifier: ViewModifier {
    @Binding var isPresenting: Bool
    var message: String
    
    func body(content: Content) -> some View {
        ZStack {
            content
            VStack {
                Spacer()
                ToastView(isPresenting: $isPresenting, message: message)
                Spacer()
                    .frame(height: 26)
            }
        }
    }
}

extension View {
    func showToast(isPresenting: Binding<Bool>, message: String) -> some View {
        return modifier(ToastViewModifier(isPresenting: isPresenting, message: message))
    }
}
