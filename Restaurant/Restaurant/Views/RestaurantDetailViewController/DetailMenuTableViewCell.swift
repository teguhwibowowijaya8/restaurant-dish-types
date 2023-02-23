//
//  DetailMenuTableViewCell.swift
//  Restaurant
//
//  Created by Teguh Wibowo Wijaya on 22/02/23.
//

import UIKit

class DetailMenuTableViewCell: UITableViewCell {
    static let identifier = "DetailMenuTableViewCell"
    
    private lazy var menuNameLabel: UILabel = {
        let menuNameLabel = UILabel()
        menuNameLabel.translatesAutoresizingMaskIntoConstraints = false
        menuNameLabel.font = UIFont.systemFont(ofSize: 16)
        menuNameLabel.numberOfLines = 0
        return menuNameLabel
    }()
    
    private lazy var menuPriceLabel: UILabel = {
        let menuPriceLabel = UILabel()
        menuPriceLabel.translatesAutoresizingMaskIntoConstraints = false
        menuPriceLabel.font = UIFont.systemFont(ofSize: 16)
        return menuPriceLabel
    }()
    
    private lazy var menuStackView: UIStackView = {
        let menuStackView = UIStackView()
        menuStackView.translatesAutoresizingMaskIntoConstraints = false
        return menuStackView
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(menu: Menu) {
        menuNameLabel.text = menu.name
        menuPriceLabel.text = "\(menu.price)€"
        
        self.addSubview(menuStackView)
        setupMenuStackView()
    }
    
    private func setupMenuStackView() {
        menuStackView.addArrangedSubview(menuNameLabel)
        menuStackView.addArrangedSubview(menuPriceLabel)
        
        menuStackView.distribution = .fillEqually
        menuStackView.alignment = .top
        menuStackView.spacing = 5
        
        NSLayoutConstraint.activate([
            menuStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 2),
            menuStackView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            menuStackView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            menuStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -2),
            
            menuNameLabel.widthAnchor.constraint(equalTo: menuStackView.widthAnchor, multiplier: 0.6),
            menuPriceLabel.widthAnchor.constraint(equalTo: menuStackView.widthAnchor, multiplier: 0.4)
        ])
    }

}
