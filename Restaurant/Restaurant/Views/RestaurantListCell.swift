//
//  RestaurantListTableViewCell.swift
//  Restaurant
//
//  Created by Teguh Wibowo Wijaya on 22/02/23.
//

import UIKit

class RestaurantListCell: UITableViewCell {
    static let identifier = "RestaurantListCell"
    
    var restaurant: Restaurant?
    
    private lazy var restaurantView: UIView = {
        let restaurantView = UIView()
        restaurantView.translatesAutoresizingMaskIntoConstraints = false
        return restaurantView
    }()
    
    private lazy var restaurantImage: UIImageView = {
        let restaurantImage = UIImageView()
        restaurantImage.contentMode = .scaleAspectFill
        restaurantImage.translatesAutoresizingMaskIntoConstraints = false
        restaurantImage.clipsToBounds = true
        return restaurantImage
    }()
    
    private lazy var restaurantNameLabel: UILabel = {
        let restaurantNameLabel = UILabel()
        restaurantNameLabel.translatesAutoresizingMaskIntoConstraints = false
        restaurantNameLabel.font = UIFont.boldSystemFont(ofSize: 16)
        return restaurantNameLabel
    }()
    
    private lazy var restaurantDescriptionLabel: UILabel = {
       let restaurantDescriptionLabel = UILabel()
        restaurantDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        restaurantDescriptionLabel.font = UIFont.systemFont(ofSize: 16)
        return restaurantDescriptionLabel
    }()
    
    private lazy var restaurantPriceLabel: UILabel = {
        let restaurantPriceLabel = UILabel()
        restaurantPriceLabel.translatesAutoresizingMaskIntoConstraints = false
        restaurantPriceLabel.textColor = UIColor(red: 0, green: 0.212, blue: 1, alpha: 1)
        restaurantPriceLabel.font = UIFont.systemFont(ofSize: 16)
        return restaurantPriceLabel
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell() {
        guard let restaurant = restaurant else {return}
        restaurantImage.image = UIImage(named: restaurant.image)
        restaurantNameLabel.text = restaurant.name
        restaurantDescriptionLabel.text = restaurant.briefDescription
        restaurantPriceLabel.text = "€\(restaurant.price)/person"
        
        self.addSubview(restaurantView)
        restaurantView.addSubview(restaurantImage)
        restaurantView.addSubview(restaurantNameLabel)
        restaurantView.addSubview(restaurantDescriptionLabel)
        restaurantView.addSubview(restaurantPriceLabel)
        
        setupRestaurantView()
        setupRestaurantImage()
        setupRestaurantNameLabel()
        setupRestaurantDescriptionLabel()
        setupRestaurantPriceLabel()
    }
    
    private func setupRestaurantView() {
        NSLayoutConstraint.activate([
            restaurantView.topAnchor.constraint(equalTo: self.topAnchor, constant: 12),
            restaurantView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            restaurantView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            restaurantView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -12)
        ])
    }
    
    private func setupRestaurantImage() {
        NSLayoutConstraint.activate([
            restaurantImage.topAnchor.constraint(equalTo: restaurantView.topAnchor),
            restaurantImage.leftAnchor.constraint(equalTo: restaurantView.leftAnchor),
            restaurantImage.rightAnchor.constraint(equalTo: restaurantView.rightAnchor),
            restaurantImage.heightAnchor.constraint(equalToConstant: 150)
        ])
    }
    
    private func setupRestaurantNameLabel() {
        NSLayoutConstraint.activate([
            restaurantNameLabel.topAnchor.constraint(equalTo: restaurantImage.bottomAnchor, constant: 20),
            restaurantNameLabel.leftAnchor.constraint(equalTo: restaurantView.leftAnchor, constant: 8),
            restaurantNameLabel.rightAnchor.constraint(equalTo: restaurantView.rightAnchor, constant: -8)
        ])
    }
    
    private func setupRestaurantDescriptionLabel() {
        NSLayoutConstraint.activate([
            restaurantDescriptionLabel.topAnchor.constraint(equalTo: restaurantNameLabel.bottomAnchor, constant: 5),
            restaurantDescriptionLabel.leftAnchor.constraint(equalTo: restaurantView.leftAnchor, constant: 8),
            restaurantDescriptionLabel.rightAnchor.constraint(equalTo: restaurantView.rightAnchor, constant: -8)
        ])
    }
    
    private func setupRestaurantPriceLabel() {
        NSLayoutConstraint.activate([
            restaurantPriceLabel.topAnchor.constraint(equalTo: restaurantDescriptionLabel.bottomAnchor, constant: 5),
            restaurantPriceLabel.leftAnchor.constraint(equalTo: restaurantView.leftAnchor, constant: 8),
            restaurantPriceLabel.rightAnchor.constraint(equalTo: restaurantView.rightAnchor, constant: -8),
            restaurantPriceLabel.bottomAnchor.constraint(equalTo: restaurantView.bottomAnchor, constant: -5)
        ])
    }

}
