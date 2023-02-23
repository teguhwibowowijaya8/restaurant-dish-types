//
//  DetailOpenTimeTableViewCell.swift
//  Restaurant
//
//  Created by Teguh Wibowo Wijaya on 22/02/23.
//

import UIKit

class DetailOpenTimeTableViewCell: UITableViewCell {
    static let identifier = "DetailOpenTimeTableViewCell"
    
    private lazy var openTimeLabel: UILabel = {
        let openTimeLabel = UILabel()
        openTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        openTimeLabel.font = UIFont.systemFont(ofSize: 16)
        return openTimeLabel
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(openTime: OpenTime) {
        var toDay = String()
        if let toDayString = openTime.toDay {
            toDay = "-\(toDayString)"
        }
        openTimeLabel.text = "\(openTime.fromDay)\(toDay): \(openTime.fromTime) - \(openTime.toTime)h"
        
        self.addSubview(openTimeLabel)
        
        NSLayoutConstraint.activate([
            openTimeLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 2),
            openTimeLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            openTimeLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            openTimeLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -2)
        ])
    }

}
