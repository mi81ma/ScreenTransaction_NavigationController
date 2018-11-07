//
//  ThirdViewController.swift
//  ScreenTransaction_NavigationController
//
//  Created by masato on 7/11/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .orange

        let label_2 = UILabel(frame: view.frame)
        label_2.text = "Screen 3"
        label_2.textColor = .white
        view.addSubview(label_2)

        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
