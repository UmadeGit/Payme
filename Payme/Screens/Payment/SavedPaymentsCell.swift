//
//  SavedPaymentsCell.swift
//  Payme
//
//  Created by Ахмад Аброров on 27/01/24.
//

import UIKit

final class SavedPaymentsCell: UICollectionViewCell {
    
    var imageView = UIImageView()
    var label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(label)
        
        label.text = "adfkjhsdfiojahgjsvdbn"
        label.frame = CGRect(x: 20, y: 40, width: 100, height: 30)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
