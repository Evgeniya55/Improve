//
//  Examples.swift
//  FirstProject
//
//  Created by Женя С on 18.03.2021.
//

import Foundation

/*class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBAction func loginButtonAction(_ sender: Any) {
        
        
        
        
    }
    override func viewDidLoad() {

        super.viewDidLoad()

        loginButton.addTarget(self, action: #selector(loginButtonPressed(sender:)), for: .touchUpInside)
        loginButton.setTitle("111", for: .normal)
        
        loginTextField.delegate = self
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(loginButtonAction(_:)))
        view.addGestureRecognizer(tap)
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        loginTextField.becomeFirstResponder()
    
    }
    
    @objc func loginButtonPressed(sender: Any) {
        if let tapSender = sender as? UITapGestureRecognizer {
            switch tapSender.state
            {
            case .possible:
                break
            case .began:
                break
            case .changed:
                break
            case .ended:
                break
            case .cancelled:
                break
            case .failed:
                break
            @unknown default:
                break
            }
        }
        
        loginTextField.resignFirstResponder()
    }


}

extension LoginViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return string != ""
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
    }
 
    func textFieldShouldReturn(_ textField: UITextField) ->
        bool {
        textFied.resignFirstResponder() // first delete the keyboard and then use the button
        return true
}*/
