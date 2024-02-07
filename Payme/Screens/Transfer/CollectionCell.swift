//
//  CollectionCell.swift
//  Payme
//
//  Created by Ахмад Аброров on 29/01/24.
//

import UIKit

final class CollectionCell: UICollectionViewCell {
    
    
    let imageView = UIImageView()
    let titleLabel = UILabel()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        contentView.addSubview(imageView)
        contentView.addSubview(titleLabel)
        
        imageView.frame = CGRect(x: 0, y: 0, width: 70, height: 70)
        titleLabel.frame = CGRect(x: -5, y: 73, width: 82, height: 40)
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .center
        titleLabel.font = .systemFont(ofSize: 14)
        titleLabel.textColor = .systemGray
        titleLabel.numberOfLines = 0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
