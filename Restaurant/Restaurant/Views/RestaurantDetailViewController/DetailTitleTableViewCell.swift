//
//  DetailTitleTableViewCell.swift
//  Restaurant
//
//  Created by Teguh Wibowo Wijaya on 22/02/23.
//

import UIKit

class DetailTitleTableViewCell: UITableViewCell {
    static let identifier = "DetailTitleTableViewCell"
    
    private lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = .systemFont(ofSize: 30)
        return titleLabel
    }()
    
    private lazy var dishTypeView: UIView = {
        let dishTypeView = UIView()
        dishTypeView.translatesAutoresizingMaskIntoConstraints = false
        dishTypeView.backgroundColor = .yellow
        return dishTypeView
    }()
    
    private lazy var dishTypeLabel: UILabel = {
        let dishTypeLabel = UILabel()
        dishTypeLabel.translatesAutoresizingMaskIntoConstraints = false
        dishTypeLabel.font = .boldSystemFont(ofSize: 15)
        return dishTypeLabel
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(title: String, dishType: String) {
        dishTypeLabel.text = dishType
        titleLabel.text = title
        
        self.addSubview(dishTypeView)
        dishTypeView.addSubview(dishTypeLabel)
        self.addSubview(titleLabel)
        
        setupDishTypeView()
        setupDishTypeLabel()
        setupTitleLabel()
    }
    
    private func setupDishTypeView() {
        NSLayoutConstraint.activate([
            dishTypeView.topAnchor.constraint(equalTo: self.topAnchor, constant: 15),
            dishTypeView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            dishTypeView.rightAnchor.constraint(lessThanOrEqualTo: self.rightAnchor, constant: -30)
        ])
    }
    
    private func setupDishTypeLabel() {
        NSLayoutConstraint.activate([
            dishTypeLabel.topAnchor.constraint(equalTo: dishTypeView.topAnchor, constant: 5),
            dishTypeLabel.leftAnchor.constraint(equalTo: dishTypeView.leftAnchor, constant: 20),
            dishTypeLabel.rightAnchor.constraint(equalTo: dishTypeView.rightAnchor, constant: -20),
            dishTypeLabel.bottomAnchor.constraint(equalTo: dishTypeView.bottomAnchor, constant: -5)
        ])
    }
    
    private func setupTitleLabel() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: dishTypeView.bottomAnchor, constant: 22),
            titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            titleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            titleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
        ])
    }
    
}
