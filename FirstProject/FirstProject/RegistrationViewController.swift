//
//  RegistrationViewController.swift
//  FirstProject
//
//  Created by Женя С on 22.03.2021.
//

import UIKit

class RegistrationViewController: UIViewController {
    @IBOutlet weak var contentScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, // 2. then it will goes to self
                                               selector: #selector(keyboardWillShow(sender:)), //3. and this will be executed
                                               name: UIResponder.keyboardWillShowNotification, //1. when it happens
                                               object: nil)
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillHide),
                                               name: UIResponder.keyboardWillHideNotification,
                                               object: nil)
        
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing(_:)))
        view.addGestureRecognizer(tap)
    }
    
    @objc func keyboardWillShow(sender: Notification) {
        if let keyboardSize = (sender.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            
            var insets = contentScrollView.contentInset
            insets.bottom = keyboardSize.height
            contentScrollView.contentInset = insets
        }
    }
    
    @objc func keyboardWillHide() {
        contentScrollView.contentInset = .zero //return to the zero frame
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
