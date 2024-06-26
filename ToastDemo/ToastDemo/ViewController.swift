//
//  ViewController.swift
//  ToastDemoApp
//
//  Created by Kang Minsang on 2023/08/13.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    let toastMessage: [Int: String] = [
        0: "기록 시작!",
        1: "Start Recording!",
        2: "开始录制!"
    ]
    var toastNum: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let button = UIButton(configuration: .filled())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        button.setTitle("toast", for: .normal)
        self.view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor)
        ])
        
        button.addAction(UIAction(handler: { _ in
            let toast = Toast.default(
                image: UIImage(systemName: "checkmark.circle")!,
                imageTint: .tintColor,
                title: self.toastMessage[self.toastNum]!,
                config: ToastConfiguration(direction: .top, enablePanToClose: false, displayTime: 2.5, animationTime: 0.25)
            )
            toast.show()
            self.toastNum = (self.toastNum+1)%4
        }), for: .touchUpInside)
        
    }
}

