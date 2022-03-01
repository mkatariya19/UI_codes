//
//  ViewController.swift
//  UISwitch
//
//  Created by Coditas on 18/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mySwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()}
        // Do any additional setup after loading the view.
        @IBAction func switchDidChange(_ sender: UISwitch){
            if sender.isOn {
                view.backgroundColor = .red
            }
            else {
                view.backgroundColor = .blue
            }
            
        }
    }




