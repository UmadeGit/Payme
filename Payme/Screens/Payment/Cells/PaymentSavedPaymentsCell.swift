//
//  PaymentSavedPaymentsCell.swift
//  Payme
//
//  Created by Ахмад Аброров on 15/02/24.
//

import UIKit

final class PaymentSavedPaymentsCell: UICollectionViewCell {
    
    let nameLabel = UILabel()
    let numberLabel = UILabel()
    let image = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(nameLabel)
        contentView.addSubview(image)
        contentView.addSubview(numberLabel)
        nameLabel.frame = CGRect(x: 10, y: 70, width: 100, height: 20)
        nameLabel.textAlignment = .center
        nameLabel.text = "Beeline"
        
        image.frame = CGRect(x: 20, y: 5, width: 80, height: 65)
        image.image = UIImage(named: "Beeline")
        
        numberLabel.frame = CGRect(x: 10, y: 90, width: 120, height: 20)
        numberLabel.text = "+998910188808"
        numberLabel.font = .systemFont(ofSize: 13)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

