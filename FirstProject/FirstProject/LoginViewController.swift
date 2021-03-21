//
//  ViewController.swift
//  FirstProject
//
//  Created by Студент 3 on 15.03.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginTextField: StyledTextField!
    @IBOutlet weak var passwordTextField: StyledTextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registrationButton: UIButton!
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
        loginTextField.delegate = self
        passwordTextField.delegate = self
        
        loginTextField.keyboardType = .emailAddress
        loginTextField.returnKeyType = .next
        passwordTextField.returnKeyType = .done
            
        // hides the keyboard when user taps outside of it
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing(_:)))
        view.addGestureRecognizer(tap)
    }
    
    func switchFirstResponder(textField: UITextField) {
        if textField == loginTextField {
            passwordTextField.becomeFirstResponder()
        } else if textField == passwordTextField {
            passwordTextField.resignFirstResponder()
        }
    }
}

extension LoginViewController: UITextFieldDelegate {
 
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switchFirstResponder(textField: textField)
        return true
    }
}
