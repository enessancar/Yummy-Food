//
//  CardView.swift
//  YummyFoodApp
//
//  Created by Enes Sancar on 2.10.2022.

import UIKit

class CardView : UIView {
    
    override init(frame : CGRect) {
        super.init(frame : frame)
        initialSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialSetup()
    }
    
    private func initialSetup() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = .zero
        layer.cornerRadius  = 10
        layer.shadowOpacity = 0.1
        cornerRadius  = 10
    }
}
