//
//  ViewController.swift
//  UIAlertController
//
//  Created by Coditas on 22/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        button.center = view.center
        button.setTitle("Set Color", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        view.addSubview(button)
        
    }
    
    @objc func buttonClick(sender:UIButton){
        
        let alert = UIAlertController(title: "Set Color", message: "", preferredStyle: .alert)
        
        let redColor = UIAlertAction(title: "Red", style: .default) {
            (redClick) in
            self.view.backgroundColor = .red
        }
        let brownColor = UIAlertAction(title: "Brown", style: .default) {
            (brownClick) in
            self.view.backgroundColor = .brown
        }
        let blueColor = UIAlertAction(title: "Blue", style: .default) {
            (blueClick) in
            self.view.backgroundColor = .blue
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(redColor)
        alert.addAction(brownColor)
        alert.addAction(blueColor)
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)

    }


}

