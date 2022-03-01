//
//  ViewController.swift
//  UIDatePicker
//
//  Created by Coditas on 22/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    var textField:UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
      let textField = UITextField(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        textField.placeholder = "Select date and time"
        textField.center = view.center
        textField.borderStyle = .roundedRect
        view.addSubview(textField)
        self.textField = textField
        
        let dateTimePicker = UIDatePicker()
        dateTimePicker.sizeToFit()
        dateTimePicker.datePickerMode = .dateAndTime
        dateTimePicker.timeZone = TimeZone(secondsFromGMT: 0)
        dateTimePicker.addTarget(self, action: #selector(dateTimePickerUpdate), for: .valueChanged)
        
        textField.inputView = dateTimePicker

    }
    
    @objc func dateTimePickerUpdate(sender:UIDatePicker){
        textField.text = "\(sender.date)"
        
    }


}

