//
//  ViewController.swift
//  UITextfield
//
//  Created by Coditas on 21/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var phoneTF: UITextField!
    
    @IBOutlet weak var emailError: UILabel!
    
    
    @IBOutlet weak var passwordError: UILabel!
    
    
    @IBOutlet weak var phoneError: UILabel!
    
    
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {

        super.viewDidLoad()
        resetForm()
        
    }
    
        func resetForm()
    {
        submitButton.isEnabled = false
        
        emailError.isHidden = false
        passwordError.isHidden = false
        phoneError.isHidden = false
        
        emailError.text = "required"
        passwordError.text = "required"
        phoneError.text = "required"
        
        emailTF.text = ""
        passwordTF.text = ""
        phoneTF.text = ""

    }
    @IBAction func emailChanged(_ sender: Any)
    { if let email = emailTF.text
        {
            if let errorMessage = invalidEmail(email)
                
            {
                emailError.text = errorMessage
                emailError.isHidden = false
            }
            else {
                emailError.isHidden = true
            }
        checkForValidForm()
    }
        func invalidEmail(_ value: String) -> String?
        {
            
            
            return nil
        }
        
        
    @IBAction func passwordChanged(_ sender: Any)
        
    {
        if let password  = passwordTF.text
        {
            if let errorMessage = invalidPAssword(password)
                
            {
                passwordError.text = errorMessage
                passwordError.isHidden = false
            }
            else {
                passwordError.isHidden = true
            }
        }
        checkForValidForm()
    }
        func invalidPAssword(_ value: String) -> String?{
            return nil 
        }
        
        
    @IBAction func phoneChanged(_ sender: Any) {
        
        if let phoneNumber = phoneTF.text
        {
            if let errorMessage = invalidPhoneNumber(phoneNumber)
            {
                phoneError.text = errorMessage
                phoneError.isHidden = false
            }
            else {
                phoneError.isHidden = true
            }
        }
        checkForValidForm()
    }
    func invalidPhoneNumber(_ value: String) -> String?
    {
        let set = CharacterSet(charactersIn: value)
        if !CharacterSet.decimalDigits.isSuperset(of: set)
        {
            return "Phone Number must contain only 10 Digits"
        }
        if value.count != 10
        {
            return "Phone Number must be 10 Digits in Length"
        }
            
        return nil
    }
    func checkForValidForm()
    {
        if emailError.isHidden && passwordError.isHidden && phoneError.isHidden
        {
            submitButton.isEnabled =  true
        }
        else
        {
            submitButton.isEnabled =  false

        }
    }
    
    @IBAction func submitAction(_ sender: Any) {
        resetForm()
    }
    
}

