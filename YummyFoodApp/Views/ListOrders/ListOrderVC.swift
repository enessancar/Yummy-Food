//
//  ListOrderVC.swift
//  YummyFoodApp
//
//  Created by Enes Sancar on 8.10.2022.

import UIKit

class ListOrderVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var orders : [Order]  = [
        .init(id: "id1", name: "Enes Sancar", dish: Dish(id: "id1", name: "Kebab", description: "Very delicious food and so spicy", image: "https://picsum.photos/100/200", calories: 34)),
        .init(id: "id2", name: "Enes Sancar", dish: Dish(id: "id2", name: "Pizza", description: "This is the best I hava ever tasted ", image: "https://picsum.photos/100/200", calories: 546)),
        .init(id: "id3", name: "Enes Sancar", dish: Dish(id: "id3", name: "Doner", description: "This is the best I hava ever tasted ", image: "https://picsum.photos/100/200", calories: 478))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Orders"
        registerCells()
    }
    
    private func registerCells() {
        
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
}

extension ListOrderVC : UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(order: orders[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let controller = DishDetailVC.instantiate()
        controller.dish = orders[indexPath.row ].dish
        navigationController?.pushViewController(controller, animated: true)
    }
}
