//
//  Dish.swift
//  YummyFoodApp
//
//  Created by Enes Sancar on 5.10.2022.

import Foundation

struct Dish {
    
    let id , name , description ,  image : String?
    let calories : Int?
    
    var formettedCalories : String {
        return "\(calories ?? 0) calories"
    }
}
