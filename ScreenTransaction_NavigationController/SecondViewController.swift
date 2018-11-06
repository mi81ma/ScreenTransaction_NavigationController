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
    }



    @objc func goBackFirstScreen(_ sender: UIButton) {
        let  firstScreen = FirstViewController()
        firstScreen.view.backgroundColor = .red
        self.navigationController?.pushViewController(firstScreen, animated: true)
    }

}
