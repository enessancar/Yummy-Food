//
//  DishDetailVC.swift
//  YummyFoodApp
//
//  Created by Enes Sancar on 6.10.2022.

import UIKit
import Kingfisher

class DishDetailVC: UIViewController {
    
    @IBOutlet weak var dishImage: UIImageView!
    @IBOutlet weak var dishTitle: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descripitonLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    
    var dish : Dish!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       populateView()
    }
    
    private func populateView() {
        
        dishImage.kf.setImage(with : dish.image?.asUrl)
        dishTitle.text = dish.name
        caloriesLabel.text = dish.formettedCalories
        descripitonLabel.text = dish.description
    }
    

    @IBAction func placeOrderButton(_ sender: UIButton) {
        
        
    }
    
}
