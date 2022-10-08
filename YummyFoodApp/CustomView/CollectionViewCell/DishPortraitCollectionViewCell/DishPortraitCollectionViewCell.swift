//
//  DishPortraitCollectionViewCell.swift
//  YummyFoodApp
//
//  Created by Enes Sancar on 5.10.2022.

import UIKit
import Kingfisher

class DishPortraitCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: DishPortraitCollectionViewCell.self)

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func setup(dish : Dish) {
        titleLabel.text = dish.name
        dishImageView.kf.setImage(with : dish.image?.asUrl)
        caloriesLabel.text = dish.formettedCalories
        descriptionLabel.text = dish.description
    }

}
