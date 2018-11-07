//
//  SecondViewController.swift
//  ScreenTransaction_NavigationController
//
//  Created by masato on 6/11/2018.
//  Copyright © 2018 masato. All rights reserved.
//


import UIKit

class SecondViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        view.backgroundColor = .blue
        let label_2 = UILabel(frame: view.frame)
        label_2.text = "Screen 2"
        label_2.textColor = .white
        view.addSubview(label_2)

        self.navigationController?.navigationBar.topItem?.title = "First Screen"

        // set Button by func
        transScreenButton()
    }



    @objc func goBackFirstScreen(_ sender: UIButton) {
        let  firstScreen = FirstViewController()
        firstScreen.view.backgroundColor = .red
        self.navigationController?.pushViewController(firstScreen, animated: true)
    }

    // make button
    func transScreenButton()  {
        let button_1 = UIButton(frame: CGRect(x: self.view.frame.width / 2 - 200 / 2, y: self.view.frame.height / 2 - 150 / 2, width: 200, height: 50))

        button_1.setTitle("Third Screen", for: .normal) // set Texit in Button
        button_1.layer.cornerRadius = 20.0 // ボタンに丸みをつける。角を曲げる
        button_1.backgroundColor = .orange
        button_1.addTarget(self, action: #selector(transitionThirdSceneButton), for: .touchUpInside)

        view.addSubview(button_1)

    }


    // set Screen Transaction Action as Nagigation Controller Action

    @objc func transitionThirdSceneButton() {
        let thirdScreen = ThirdViewController()

        self.navigationController?.pushViewController(thirdScreen, animated: true)
        self.navigationController?.navigationBar.topItem?.title = "Second Screen"


    }


}
