//
//  StyledTextField.swift
//  FirstProject
//
//  Created by Женя С on 18.03.2021.
//

import UIKit

class StyledTextField: UITextField {
    
    // sets borders?
    @IBInspectable var insetX: CGFloat = 0 {
        didSet {
            layoutIfNeeded() // makes autolayout to review all rules and change views if sth s changed
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder) // called for parental class init
        self.setView() // now we want for setView() to be activated
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame) // init for all view init rules
        self.setView()
    }
    
    //example:
    init(backgroundColor: UIColor) {
        super.init(frame: .zero)
        
        self.backgroundColor = backgroundColor
    }
    // end ofexample
    
    private func setView() {
        self.backgroundColor = .gray
        self.layer.cornerRadius = 10.0
        self.layer.borderWidth = 2.0
        self.layer.borderColor = UIColor.black.cgColor
    }
    
    // placeholder position - for static text in field?
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX, dy: 0.0)
    }
    
    //text position - for triangle where changes will be made
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX, dy: 0.0)
    }
}
