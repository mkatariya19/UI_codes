//
//  ViewController.swift
//  UI2
//
//  Created by Coditas on 17/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let label = UILabel()
        label.frame = CGRect(x: 50, y: 80, width: 150, height: 80)
        label.text = "We're Beings"
        
        
        
        let imageView = UIImageView()
        imageView.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        imageView.image = UIImage(named: "Onearth")
        
         imageView.contentMode = .scaleAspectFit
        
        
        let button = UIButton()
        button.frame = CGRect(x: 50, y: 50,  width: 170, height: 500)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18.0)
        button.setTitle("Tap me", for: .normal)
        button.setTitle("watering the tress", for: .highlighted)
        button.setTitleColor(UIColor.brown, for: .normal)
        button.setTitleColor(UIColor.green, for: .highlighted)
        
        
        
        
        self.view.addSubview(label)
        
        self.view.addSubview(imageView)
        
        self.view.addSubview(button)
        
    }
    



}


