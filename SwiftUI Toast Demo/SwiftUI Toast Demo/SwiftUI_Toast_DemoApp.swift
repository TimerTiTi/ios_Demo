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
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                ContentView()
                    .environmentObject(environment)
            }
            .showToast(
                isPresenting: $environment.isPresenting,
                message: environment.message
            )
        }
    }
}
