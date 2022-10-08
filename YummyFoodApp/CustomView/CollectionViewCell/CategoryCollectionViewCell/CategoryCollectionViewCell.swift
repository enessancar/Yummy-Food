//
//  CategoryCollectionViewCell.swift
//  YummyFoodApp
//
//  Created by Enes Sancar on 1.10.2022.

import UIKit
import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryTitleLabel: UILabel!
    
    static let identifier = String(describing: CategoryCollectionViewCell.self)
    
    func setup( category : DishCategory ) {
        
        categoryTitleLabel.text = category.name
        categoryImageView.kf.setImage(with : category.image.asUrl)
    }
    
}
