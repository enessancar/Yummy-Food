//
//  DishLandscapeCollectionViewCell.swift
//  YummyFoodApp
//  Created by Enes Sancar on 5.10.2022.

import UIKit
import Kingfisher

class DishLandscapeCollectionViewCell: UICollectionViewCell {

    static let identifier = String(describing: DishLandscapeCollectionViewCell.self)

    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    
    func setup(dish : Dish) {
        
        dishImageView.kf.setImage(with : dish.image?.asUrl)
        titleLabel.text = dish.name
        descriptionLabel.text = dish.description
        caloriesLabel.text = dish.formettedCalories
    }
    
}
