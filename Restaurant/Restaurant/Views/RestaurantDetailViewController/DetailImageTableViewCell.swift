//
//  DetailImageTableViewCell.swift
//  Restaurant
//
//  Created by Teguh Wibowo Wijaya on 22/02/23.
//

import UIKit

class DetailImageTableViewCell: UITableViewCell {
    static let identifier = "DetailImageTableViewCell"
    
    private lazy var detailImageView: UIImageView = {
        let detailImageView = UIImageView()
        detailImageView.translatesAutoresizingMaskIntoConstraints = false
        detailImageView.contentMode = .scaleAspectFill
        return detailImageView
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(imageName: String) {
        detailImageView.image = UIImage(named: imageName)
        
        self.addSubview(detailImageView)
        
        NSLayoutConstraint.activate([
            detailImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 18),
            detailImageView.leftAnchor.constraint(equalTo: self.leftAnchor),
            detailImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -18),
            detailImageView.rightAnchor.constraint(equalTo: self.rightAnchor),
            detailImageView.heightAnchor.constraint(equalToConstant: 280)
        ])
    }

}
