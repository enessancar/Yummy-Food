//
//  UIView+Extension.swift
//  YummyFoodApp
//
//  Created by Enes Sancar on 30.09.2022.
//

import UIKit

extension UIView {
    
    @IBInspectable var cornerRadius : CGFloat {
        
        get { return self.cornerRadius }
        
        set { self.layer.cornerRadius = newValue }
    }
}
 
