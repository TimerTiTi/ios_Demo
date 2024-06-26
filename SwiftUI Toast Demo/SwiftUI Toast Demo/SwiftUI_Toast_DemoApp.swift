//
//  SwiftUI_Toast_DemoApp.swift
//  SwiftUI Toast Demo
//
//  Created by Kang Minsang on 2023/12/04.
//

import SwiftUI

@main
struct SwiftUI_Toast_DemoApp: App {
    @StateObject var environment = Environment()
//    @State var backgroundColor: Color = .white
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                ContentView(backgroundColor: .white)
//                    .environmentObject(environment)
            }
//            .showToast(
//                isPresenting: $environment.isPresenting,
//                message: environment.message
//            )
        }
    }
}
