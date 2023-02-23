//
//  DetailAddressTableViewCell.swift
//  Restaurant
//
//  Created by Teguh Wibowo Wijaya on 22/02/23.
//

import UIKit

class DetailTextviewTableViewCell: UITableViewCell {
    static let identifier = "DetailTextviewTableViewCell"
    
    private lazy var detailTextview: UITextView = {
       let detailTextview = UITextView()
        detailTextview.translatesAutoresizingMaskIntoConstraints = false
        detailTextview.isEditable = false
        detailTextview.isSelectable = false
        detailTextview.isScrollEnabled = false
        detailTextview.font = UIFont.systemFont(ofSize: 16)
        return detailTextview
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(text: String, paddingTop: CGFloat = 18) {
        detailTextview.text = text
        detailTextview.textContainerInset = UIEdgeInsets(top: 0, left: 0, bottom: 8, right: 0)
        
        self.addSubview(detailTextview)
        
        setupDetailTextview(paddingTop: paddingTop)
    }
    
    private func setupDetailTextview(paddingTop: CGFloat) {
        NSLayoutConstraint.activate([
            detailTextview.topAnchor.constraint(equalTo: self.topAnchor, constant: paddingTop),
            detailTextview.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15),
            detailTextview.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15),
            detailTextview.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -18)
        ])
    }

}
