//
//  ViewController.swift
//  UISlider
//
//  Created by Coditas on 22/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let slider = UISlider(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        
        slider.center = view.center
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.value = 59
        slider.addTarget(self, action: #selector(sliderValue(sender:)), for: .valueChanged)
        view.addSubview(slider)
    }
    
    @objc func sliderValue(sender:UISlider){
        
        print(sender.value)
    }

}

