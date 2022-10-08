//
//  String+Extensions.swift
//  YummyFoodApp
//
//  Created by Enes Sancar on 1.10.2022.

import Foundation

extension String {
    
    var asUrl : URL? {
        return URL(string: self)
    }
}
