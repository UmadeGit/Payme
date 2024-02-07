//
//  ServicesCell.swift
//  Payme
//
//  Created by Ахмад Аброров on 17/01/24.
//

import UIKit

class ServicesCell: UITableViewCell {
    
    let titleLabel = UILabel()
    let descriptionLabel = UILabel()
    let cellView = UIView()
    let image = UIImageView()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(cellView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(image)
        
        cellView.translatesAutoresizingMaskIntoConstraints = false
        cellView.layer.cornerRadius = 10
        cellView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15).isActive = true
        cellView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15).isActive = true
        cellView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5).isActive = true
        cellView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5).isActive = true
    

        titleLabel.font = .boldSystemFont(ofSize: 17)
        
        descriptionLabel.textColor = .init(UIColor(red: 0/255, green: 47/255, blue: 52/255, alpha: 0.7))
        descriptionLabel.font = .systemFont(ofSize: 16, weight: .light)
        descriptionLabel.frame = CGRect(x: 100, y: 25, width: 300, height: 70)
        descriptionLabel.numberOfLines = 0
        
        image.frame = CGRect(x: 35, y: 25, width: 50, height: 50)
        image.backgroundColor = .white
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
