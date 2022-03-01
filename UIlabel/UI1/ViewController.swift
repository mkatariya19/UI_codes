//
//  ViewController.swift
//  UI1
//
//  Created by Coditas on 17/02/22.
//

import UIKit

class ViewController: UIViewController {
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        label.frame = CGRect(x: 150, y: 100, width: 100, height: 150)
        label.text = "TestlabelUI"
        
        self.view.addSubview(label)
        
    }


}

