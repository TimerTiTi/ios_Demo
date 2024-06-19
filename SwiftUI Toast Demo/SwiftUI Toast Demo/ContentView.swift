//
//  ContentView.swift
//  SwiftUI Toast Demo
//
//  Created by Kang Minsang on 2023/12/04.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var environment: Environment
    
    var body: some View {
        ZStack(alignment: .center) {
            VStack {
                Button {
                    environment.showToast(message: "알림설정 변경에 실패했습니다.")
                } label: {
                    Text("show toast")
                }
            }
            .padding()
        }
    }
}

#Preview {
    @State var isPresenting: Bool = false
    return ContentView().environmentObject(Environment())
}
