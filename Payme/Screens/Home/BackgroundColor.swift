//
//  BackgroundColor.swift
//  Payme
//
//  Created by Ахмад Аброров on 19/02/24.
//

import UIKit

final class BackgroundColor: UICollectionReusableView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
