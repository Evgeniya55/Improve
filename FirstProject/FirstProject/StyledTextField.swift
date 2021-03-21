//
//  StyledTextField.swift
//  FirstProject
//
//  Created by Женя С on 18.03.2021.
//

import UIKit

@IBDesignable

class StyledTextField: UITextField {
    
    @IBInspectable var insetX: CGFloat = 0 {
        didSet {
            layoutIfNeeded() // makes autolayout to review all rules
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder) // called for parental class init
        self.setView() // now we want for setView() to be activated
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setView()
    }
    
    /*example:
    init(backgroundColor: UIColor) {
        super.init(frame: .zero)
        
        self.backgroundColor = backgroundColor
    }
     end ofexample */
    
    private func setView() {
        self.backgroundColor = #colorLiteral(red: 0.7685429454, green: 0.7686761022, blue: 0.7685345411, alpha: 1)
        self.layer.cornerRadius = 10.0
        self.layer.borderWidth = 2.0
        self.layer.borderColor = #colorLiteral(red: 0.3372146487, green: 0.3372780979, blue: 0.3372106552, alpha: 1)
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
