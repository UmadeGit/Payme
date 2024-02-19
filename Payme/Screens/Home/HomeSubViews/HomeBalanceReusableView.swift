//
//  HomeBalanceReusableView.swift
//  Payme
//
//  Created by Ахмад Аброров on 24/01/24.
//

import UIKit

final class HomeBalanceReusableView: UICollectionReusableView {
    
    let label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(label)
        label.frame = CGRect(x: 10, y: 10, width: 100, height: 40)
        label.text = "dkjhaujshajklh"
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
