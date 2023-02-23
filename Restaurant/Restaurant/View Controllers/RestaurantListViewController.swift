//
//  RestaurantListViewController.swift
//  Restaurant
//
//  Created by Teguh Wibowo Wijaya on 22/02/23.
//

import UIKit

class RestaurantListViewController: UIViewController {
    var dishType: String?
    var restaurants: [Restaurant]?
    
    @IBOutlet weak var restaurantListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupTableView()
    }
    
    func setupTableView() {
        restaurantListTableView.delegate = self
        restaurantListTableView.dataSource = self
        
        restaurantListTableView.register(RestaurantListCell.self, forCellReuseIdentifier: RestaurantListCell.identifier)
    }
}

// MARK: Restaurant List Table View Delegate and Data Source
extension RestaurantListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let restaurant = restaurants?[indexPath.row], let cell = tableView.dequeueReusableCell(withIdentifier: RestaurantListCell.identifier, for: indexPath) as? RestaurantListCell else {return UITableViewCell()}
        
        cell.restaurant = restaurant
        cell.setupCell()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let restaurant = restaurants?[indexPath.row],
           let dishType = dishType,
            let restaurantDetailVC = storyboard.instantiateViewController(withIdentifier: "RestaurantDetailViewController") as? RestaurantDetailViewController {
            
            restaurantDetailVC.restaurant = restaurant
            restaurantDetailVC.dishType = dishType
            navigationController?.pushViewController(restaurantDetailVC, animated: true)
        }
    }
}

//MARK: Restaurant List Table View Header Setup
extension RestaurantListViewController {
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerTitleLabel = UILabel()
        headerTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        headerTitleLabel.text = dishType ?? "Restaurants"
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
