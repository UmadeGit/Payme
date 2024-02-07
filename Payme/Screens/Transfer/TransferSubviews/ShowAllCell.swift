//
//  ShowAllCell.swift
//  Payme
//
//  Created by Ахмад Аброров on 02/02/24.
//

import UIKit

final class ShowAllCell: UITableViewCell {
    
    let image = UIImageView()
    let settingsImage = UIImageView()
    var nameLabel = UILabel()
    var cardLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(image)
        contentView.addSubview(nameLabel)
        contentView.addSubview(cardLabel)
        contentView.addSubview(settingsImage)
        
        image.frame = CGRect(x: 20, y: 8, width: 50, height: 50)
        image.layer.cornerRadius = 25
        image.backgroundColor = .random
        
        nameLabel.frame = CGRect(x: 90, y: 13, width: 250, height: 20)
     //   nameLabel.text = "Ahmabek Abrorov"
        
        cardLabel.frame = CGRect(x: 90, y: 38, width: 250, height: 20)
   //     cardLabel.text = "8600 00** **** 3323"
        cardLabel.textColor = .gray
        cardLabel.font = .systemFont(ofSize: 15)
        
        settingsImage.image = UIImage(named: "VerticalEllipsisGray")
        settingsImage.frame = CGRect(x: 380, y: 25, width: 20, height: 20)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

