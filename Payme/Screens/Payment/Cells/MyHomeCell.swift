//
//  MyHomeCell.swift
//  Payme
//
//  Created by Ахмад Аброров on 13/02/24.
//

import UIKit

final class MyHomeCell: UICollectionViewCell {
    
    let homeLabel = UILabel()
    let image = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(homeLabel)
        addSubview(image)
        
        homeLabel.text = "Home"
        homeLabel.frame = CGRect(x: 80, y: 25, width: 100, height: 30)
        homeLabel.font = .boldSystemFont(ofSize: 17)
        
        image.frame = CGRect(x: 15, y: 20, width: 50, height: 45)
        image.image = UIImage(named: "Home")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
