//
//  StyledTextField.swift
//  FirstProject
//
//  Created by Женя С on 18.03.2021.
//

import UIKit

@IBDesignable

class StyledTextField: UITextField {
    
    @IBInspectable var insetX: CGFloat = 0.0 {
        didSet {
            layoutIfNeeded()
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setView()
    }
    
    private func setView() {
        self.backgroundColor = #colorLiteral(red: 0.7685429454, green: 0.7686761022, blue: 0.7685345411, alpha: 1)
        self.layer.cornerRadius = 10.0
        self.layer.borderWidth = 2.0
        self.layer.borderColor = #colorLiteral(red: 0.3372146487, green: 0.3372780979, blue: 0.3372106552, alpha: 1)
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX, dy: 0.0)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX, dy: 0.0)
    }
}
