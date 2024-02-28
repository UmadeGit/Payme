//
//  PaymentsCell.swift
//  Payme
//
//  Created by Ахмад Аброров on 13/02/24.
//

import UIKit

final class PaymentsCell: UICollectionViewCell {
    
    let image = UIImageView()
    let label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(image)
        addSubview(label)
        
        image.frame = CGRect(x: 30, y: 10, width: 55, height: 55)
        image.image = UIImage(named: "popular")
        
        label.frame = CGRect(x: 5, y: 75, width: 110, height: 40)
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 15)
        label.text = "Популярное"
        label.textAlignment = .center
        label.textColor = .gray
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
