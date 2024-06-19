//
//  ToastView.swift
//  SwiftUI Toast Demo
//
//  Created by Kang Minsang on 2023/12/04.
//

import SwiftUI

struct ToastView: View {
    @Binding var isPresenting: Bool
    var message: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 4)
                .frame(height: 44)
                .foregroundColor(Color.black)
                .padding(10)
                .shadow(color: .gray.opacity(0.7), radius: 5, x: 0, y: 5)
            
            Text(message)
                .foregroundStyle(Color.white)
                .font(.system(size: 13))
                .padding(.horizontal, 24)
        }
        .onChange(of: isPresenting, { oldValue, newValue in
            if newValue {
                DispatchQueue.main.asyncAfter(deadline: .now()+2) {
                    isPresenting = false
                }
            }
        })
        .opacity(isPresenting ? 1.0 : 0)
        .animation(.easeIn, value: isPresenting)
    }
}

#Preview {
    @State var isPresenting: Bool = true
    return ToastView(isPresenting: $isPresenting, message: "알림설정 변경에 실패했습니다.")
}
