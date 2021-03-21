//
//  StyledButton.swift
//  FirstProject
//
//  Created by Evgeniya Senchurova on 20.03.2021.
//

import UIKit

@IBDesignable

class StyledButton: UIButton {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                backgroundColor = #colorLiteral(red: 0.1371571834, green: 0.2891698892, blue: 0.6758722385, alpha: 1)
            } else {
                backgroundColor = #colorLiteral(red: 0.1908343732, green: 0.4058829844, blue: 0.9557054639, alpha: 1)
            }
        }
    }
}
