//
//  RestaurantPlaceCell.swift
//  Restaurant
//
//  Created by Teguh Wibowo Wijaya on 22/02/23.
//

import UIKit

class RestaurantPlaceCell: UITableViewCell {
    static let identifier: String = "RestaurantPlaceCell"
    
    var restaurantPlace: DishType?
    
    private lazy var placeIcon: UIImageView = {
//        let placeIconImage = UIImage(named: "")
        let placeIcon = UIImageView()
        placeIcon.translatesAutoresizingMaskIntoConstraints = false
        placeIcon.contentMode = .scaleAspectFit
        return placeIcon
    }()
    
    private lazy var placeNameLabel: UILabel = {
        let placeNameLabel = UILabel()
        placeNameLabel.translatesAutoresizingMaskIntoConstraints = false
        return placeNameLabel
    }()
    
    private lazy var placeCountView: UIView = {
        let placeCountView = UIView()
        placeCountView.translatesAutoresizingMaskIntoConstraints = false
        placeCountView.backgroundColor = .yellow
        return placeCountView
    }()
    
    private lazy var placeCountLabel: UILabel = {
        let placeCountLabel = UILabel()
        placeCountLabel.translatesAutoresizingMaskIntoConstraints = false
        return placeCountLabel
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell() {
        guard let restaurantPlace = restaurantPlace else {return}
        placeIcon.image = UIImage(named: restaurantPlace.iconName)
        placeNameLabel.text = restaurantPlace.name
        placeCountLabel.text = "\(restaurantPlace.restaurants.count) Places"
        
        self.addSubview(placeIcon)
        self.addSubview(placeNameLabel)
        self.addSubview(placeCountView)
        placeCountView.addSubview(placeCountLabel)
        
        setupPlaceIcon()
        setupPlaceNameLabel()
        setupPlaceCountView()
        setupPlaceCountLabel()
    }
    
    private func setupPlaceIcon() {
        NSLayoutConstraint.activate([
            placeIcon.topAnchor.constraint(equalTo: self.topAnchor, constant: 14),
            placeIcon.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            placeIcon.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -14),
            placeIcon.widthAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    private func setupPlaceNameLabel() {
        NSLayoutConstraint.activate([
            placeNameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 14),
            placeNameLabel.leftAnchor.constraint(equalTo: placeIcon.rightAnchor, constant: 10),
            placeNameLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -14),
            placeNameLabel.rightAnchor.constraint(equalTo: placeCountView.leftAnchor, constant: 10)
        ])
    }
    
    private func setupPlaceCountView() {
        NSLayoutConstraint.activate([
            placeCountView.topAnchor.constraint(equalTo: self.topAnchor, constant: 14),
            placeCountView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            placeCountView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -14)
        ])
    }
    
    private func setupPlaceCountLabel() {
        NSLayoutConstraint.activate([
            placeCountLabel.topAnchor.constraint(equalTo: placeCountView.topAnchor, constant: 5),
            placeCountLabel.leftAnchor.constraint(equalTo: placeCountView.leftAnchor, constant: 10),
            placeCountLabel.rightAnchor.constraint(equalTo: placeCountView.rightAnchor, constant: -10),
            placeCountLabel.bottomAnchor.constraint(equalTo: placeCountView.bottomAnchor, constant: -5)
        ])
    }

}
