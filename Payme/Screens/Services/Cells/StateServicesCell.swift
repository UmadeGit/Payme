//
//  StateServicesCell.swift
//  Payme
//
//  Created by Ахмад Аброров on 24/01/24.
//

import UIKit

class StateServicesCell: UITableViewCell {
    
    let titleLabel = UILabel()
    let descriptionLabel = UILabel()
    let image = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(titleLabel)
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(image)
        
        titleLabel.frame = CGRect(x: 70, y: 5, width: 200, height: 30)
        titleLabel.font = .systemFont(ofSize: 17)
        
        
        descriptionLabel.frame = CGRect(x: 70, y: 35, width: 330, height: 50)
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textColor = .systemGray
        
        image.frame = CGRect(x: 15, y: 5, width: 35, height: 30)
        image.tintColor = .systemGray
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
