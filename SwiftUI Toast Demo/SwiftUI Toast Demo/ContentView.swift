//
//  ContentView.swift
//  SwiftUI Toast Demo
//
//  Created by Kang Minsang on 2023/12/04.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var environment: Environment
    @State var backgroundColor: Color
    var text = ["기록 시작!", "Start Recording!"]
    @State var index = 0
    
    @State var isPresenting: Bool = false
    
    var body: some View {
        ZStack(alignment: .center) {
            backgroundColor
                .ignoresSafeArea()
            VStack {
                ToastView(isPresenting: $isPresenting) { isPresenting in
                    newRecordToastView(isPresenting: isPresenting)
                }
             Spacer()
            }
            VStack {
                Button {
//                    toastView.show()
                    self.isPresenting = true
                } label: {
                    Text("show toast")
                }
                Button {
                    if backgroundColor == .white {
                        self.backgroundColor = .black
                    } else {
                        self.backgroundColor = .white
                    }
                } label: {
                    Text("change background color")
                }
            }
            .padding()
        }
    }
}

#Preview {
    @State var isPresenting: Bool = false
    return ContentView(backgroundColor: .white)
        .environmentObject(Environment())
}
