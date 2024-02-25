//
//  HomeFinanceServicesCell.swift
//  Payme
//
//  Created by Ахмад Аброров on 19/02/24.
//

import UIKit

final class HomeFinanceServicesCell: UICollectionViewCell {
    
    let image = UIImageView()
    let label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(image)
        contentView.addSubview(label)
        
        image.frame = CGRect(x: 15, y: 10, width: 50, height: 50)
        image.image = UIImage(named: "HomeTransfer")
        label.frame = CGRect(x: 75, y: 10, width: 150, height: 50)
        label.numberOfLines = 0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
