//
//  ViewController.swift
//  UIPickerView
//
//  Created by Coditas on 22/02/22.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var arrWonder = ["Taj Mahal", "Machu Picchu", "Chicken Itza", "Colosseum", "Petra", "Great Wall of China", "Great Pyramid of Giza"]
    
    var textField:UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textField = UITextField(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        textField.placeholder = "Select Wonder"
        textField.borderStyle = .roundedRect
        textField.center = view.center
        view.addSubview(textField)
        self.textField = textField
        
        let picker = UIPickerView()
        picker.sizeToFit()
        picker.delegate = self
        picker.dataSource = self
        
        textField.inputView = picker
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return arrWonder.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrWonder[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textField.text = arrWonder[row]
    }


}

