//
//  ListDishesVC.swift
//  YummyFoodApp
//
//  Created by Enes Sancar on 7.10.2022.

import UIKit

class ListDishesVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var category : DishCategory!
    
    var dishes : [Dish] = [
        .init(id: "id1", name: "Garri", description: "This is the best I hava ever tasted ", image: "https://picsum.photos/100/200", calories: 34),
        .init(id: "id2", name: "Pizza", description: "This is the best I hava ever tasted ", image: "https://picsum.photos/100/200", calories: 546),
        .init(id: "id3", name: "Soup", description: "This is the best I hava ever tasted ", image: "https://picsum.photos/100/200", calories: 50)
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = category.name
        registerCells()
    }
    
    private func registerCells() {
        
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
}

extension ListDishesVC : UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        
        cell.setup(dish: dishes[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let controller = DishDetailVC.instantiate()
        controller.dish = dishes[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
}
