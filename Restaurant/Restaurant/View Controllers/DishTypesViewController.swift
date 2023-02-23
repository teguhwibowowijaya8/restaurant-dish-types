//
//  ViewController.swift
//  Restaurant
//
//  Created by Teguh Wibowo Wijaya on 22/02/23.
//

import UIKit

class DishTypesViewController: UIViewController {
    
    @IBOutlet weak var dishTypesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupLeftNavbarItem()
        setupTableView()
    }
    
    func setupTableView() {
        dishTypesTableView.delegate = self
        dishTypesTableView.dataSource = self
        
        dishTypesTableView.register(RestaurantPlaceCell.self, forCellReuseIdentifier: RestaurantPlaceCell.identifier)
    }
}

// MARK: Restaurant Type Table View Delegate and Data Sources
extension DishTypesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DishTypesData.dishTypes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: RestaurantPlaceCell.identifier, for: indexPath) as? RestaurantPlaceCell else {return UITableViewCell()}
        
        cell.restaurantPlace = DishTypesData.dishTypes[indexPath.row]
        cell.setupCell()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let restaurantListVC = storyboard.instantiateViewController(withIdentifier: "RestaurantListViewController") as? RestaurantListViewController {
            
            let restaurantPlaceData = DishTypesData.dishTypes[indexPath.row]
            restaurantListVC.dishType = restaurantPlaceData.name
            restaurantListVC.restaurants = restaurantPlaceData.restaurants
            
            self.navigationController?.pushViewController(restaurantListVC, animated: true)
        }
        
    }
}

// MARK: Restaurant Type Left Navigation Bar Item
extension DishTypesViewController {
    func setupLeftNavbarItem() {
        let leftNavbarItem = UIBarButtonItem()
        leftNavbarItem.image = UIImage(systemName: "line.3.horizontal")
        
        self.navigationController?.navigationBar.tintColor = .black
        self.navigationItem.setLeftBarButton(leftNavbarItem, animated: true)
    }
}

// MARK: Restaurant Type Table View Header Setup
extension DishTypesViewController {
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerTitleLabel = UILabel()
        headerTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        headerTitleLabel.text = "Dish Types"
        headerTitleLabel.font = .systemFont(ofSize: 30)
        
        let headerTitleView = UITableViewHeaderFooterView()
        headerTitleView.addSubview(headerTitleLabel)
        
        NSLayoutConstraint.activate([
            headerTitleLabel.topAnchor.constraint(equalTo: headerTitleView.topAnchor, constant: 10),
            headerTitleLabel.leftAnchor.constraint(equalTo: headerTitleView.leftAnchor, constant: 20),
            headerTitleLabel.rightAnchor.constraint(equalTo: headerTitleView.rightAnchor, constant: -20),
            headerTitleLabel.bottomAnchor.constraint(equalTo: headerTitleView.bottomAnchor, constant: -10)
        ])
        
        return headerTitleView
    }
}

