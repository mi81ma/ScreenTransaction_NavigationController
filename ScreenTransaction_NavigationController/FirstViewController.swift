//
//  ViewController.swift
//  ScreenTransaction_NavigationController
//
//  Created by masato on 6/11/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        view.backgroundColor = .green
        let label_1 = UILabel(frame: view.frame)
        label_1.text = "Screen 1"
        view.addSubview(label_1)

        // set Button by func
        transScreenButton()
    }

    // make button
    func transScreenButton()  {
        let button_1 = UIButton(frame: CGRect(x: self.view.frame.width / 2 - 200 / 2, y: self.view.frame.height / 2 - 150 / 2, width: 200, height: 50))

        button_1.setTitle("Screen Transition Button", for: .normal) // set Texit in Button
        button_1.layer.cornerRadius = 20.0 // ボタンに丸みをつける。角を曲げる
        button_1.backgroundColor = .orange
        button_1.addTarget(self, action: #selector(transitionSecondSceneButton), for: .touchUpInside)

        view.addSubview(button_1)

    }


    // set Screen Transaction Action as Nagigation Controller Action

    @objc func transitionSecondSceneButton() {
        let secondScreen = SecondViewController()

        self.navigationController?.pushViewController(secondScreen, animated: true)

    }

}


