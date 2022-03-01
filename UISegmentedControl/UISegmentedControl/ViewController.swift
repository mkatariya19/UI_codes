//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by Coditas on 22/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let items = ["Red", "Black", "Blue", "Yellow"]
        
        let segment = UISegmentedControl(items: items)
        segment.frame = CGRect(x: 0, y: 0, width: 350, height: 40)
        segment.center = view.center
        segment.selectedSegmentIndex = 1
        segment.addTarget(self, action: #selector(segmentValue(sender:)), for: .valueChanged)
        view.addSubview(segment)
        view.backgroundColor = .black
    }
    
    @objc func segmentValue(sender:UISegmentedControl)
    {
        switch sender.selectedSegmentIndex{
        case 0: view.backgroundColor = .red
        case 1: view.backgroundColor = .black
        case 2: view.backgroundColor = .blue
        case 3: view.backgroundColor = .yellow
        default: break
        }
    }


}

