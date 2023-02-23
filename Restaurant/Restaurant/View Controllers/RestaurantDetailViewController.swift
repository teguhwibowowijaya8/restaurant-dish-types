//
//  RestaurantDetailViewController.swift
//  Restaurant
//
//  Created by Teguh Wibowo Wijaya on 22/02/23.
//

import UIKit

enum RestaurantDetailSection: Int {
    case title
    case address
    case openTime
    case image
    case menu
    case about
    
    init(_ section: Int) {
        switch section {
        case 0:
            self = .title
        case 1:
            self = .address
        case 2:
            self = .openTime
        case 3:
            self = .image
        case 4:
            self = .menu
        case 5:
            self = .about
        default:
            self = .title
        }
    }
}

class RestaurantDetailViewController: UIViewController {
    
    @IBOutlet weak var restaurantDetailTableView: UITableView!
    
    var dishType: String?
    var restaurant: Restaurant?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupTableView()
    }
    
    func setupTableView() {
        restaurantDetailTableView.delegate = self
        restaurantDetailTableView.dataSource = self
        
        restaurantDetailTableView.separatorStyle = .none
        
        restaurantDetailTableView.register(DetailTitleTableViewCell.self, forCellReuseIdentifier: DetailTitleTableViewCell.identifier)
        restaurantDetailTableView.register(DetailTextviewTableViewCell.self, forCellReuseIdentifier: DetailTextviewTableViewCell.identifier)
        restaurantDetailTableView.register(DetailOpenTimeTableViewCell.self, forCellReuseIdentifier: DetailOpenTimeTableViewCell.identifier)
        restaurantDetailTableView.register(DetailImageTableViewCell.self, forCellReuseIdentifier: DetailImageTableViewCell.identifier)
        restaurantDetailTableView.register(DetailMenuTableViewCell.self, forCellReuseIdentifier: DetailMenuTableViewCell.identifier)
    }
}

// MARK: Restaurant Detail Table View Delegate and Data Source
extension RestaurantDetailViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let restaurant = restaurant else {return 0}
        
        switch RestaurantDetailSection(section) {
        case .title, .address, .image, .about:
            return 1
        case .openTime:
            return restaurant.openTimes.count
        case .menu:
            return restaurant.menus.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let dishType = dishType, let restaurant = restaurant else {return UITableViewCell()}
        
        switch RestaurantDetailSection(indexPath.section) {
        case .title:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: DetailTitleTableViewCell.identifier, for: indexPath) as? DetailTitleTableViewCell else {return UITableViewCell()}
            cell.setupCell(title: restaurant.name, dishType: dishType)
            
            return cell
        case .address:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: DetailTextviewTableViewCell.identifier, for: indexPath) as? DetailTextviewTableViewCell else {return UITableViewCell()}
            cell.setupCell(text: restaurant.address)
            
            return cell
        case .openTime:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: DetailOpenTimeTableViewCell.identifier, for: indexPath) as? DetailOpenTimeTableViewCell else {return UITableViewCell()}
            cell.setupCell(openTime: restaurant.openTimes[indexPath.row])
            
            return cell
        case .image:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: DetailImageTableViewCell.identifier, for: indexPath) as? DetailImageTableViewCell else {return UITableViewCell()}
            cell.setupCell(imageName: restaurant.image)
            
            return cell
        case .menu:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: DetailMenuTableViewCell.identifier, for: indexPath) as? DetailMenuTableViewCell else {return UITableViewCell()}
            cell.setupCell(menu: restaurant.menus[indexPath.row])
            
            return cell
        case .about:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: DetailTextviewTableViewCell.identifier, for: indexPath) as? DetailTextviewTableViewCell else {return UITableViewCell()}
            cell.setupCell(text: restaurant.fullDescription, paddingTop: 12)
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return false
    }
    
}

// MARK: Restaurant Detail Table View Header Setup
extension RestaurantDetailViewController {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        switch RestaurantDetailSection(section) {
        case .menu:
            return titleHeaderTableView(title: "Menu", paddingBottom: 10)
        case .about:
            return titleHeaderTableView(title: "About", paddingBottom: 0)
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        switch RestaurantDetailSection(section) {
        case .menu, .about:
            return 20
        default:
            return 0
        }
    }
    
    func titleHeaderTableView(title: String, paddingBottom: CGFloat) -> UITableViewHeaderFooterView {
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = title
        titleLabel.font = UIFont.systemFont(ofSize: 20)
        titleLabel.textColor = UIColor(red: 0, green: 0.212, blue: 1, alpha: 1)
        
        let titleHeaderView = UITableViewHeaderFooterView()
        titleHeaderView.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: titleHeaderView.topAnchor, constant: 5),
            titleLabel.leftAnchor.constraint(equalTo: titleHeaderView.leftAnchor, constant: 20),
            titleLabel.rightAnchor.constraint(equalTo: titleHeaderView.rightAnchor, constant: -20),
            titleLabel.bottomAnchor.constraint(equalTo: titleHeaderView.bottomAnchor, constant: -paddingBottom)
        ])
        
        return titleHeaderView
    }
}
