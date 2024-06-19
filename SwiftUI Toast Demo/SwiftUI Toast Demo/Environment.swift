//
//  Environment.swift
//  SwiftUI Toast Demo
//
//  Created by Kang Minsang on 2023/12/04.
//

import Foundation
import Combine

final class Environment: ObservableObject {
    @Published var isPresenting: Bool = false
    private(set) var message: String = ""
    
    func showToast(message: String) {
        guard isPresenting == false else { return }
        self.message = message
        self.isPresenting = true
    }
}
