//
//  PaymentsBalanceReusableView.swift
//  Payme
//
//  Created by Ахмад Аброров on 27/02/24.
//

import UIKit

final class PaymentsBalanceReusableView: UICollectionReusableView {
    
    let label = UILabel()
    let showAll = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(label)
        addSubview(showAll)
        label.frame = CGRect(x: 0, y: 10, width: 300, height: 40)
        label.font = .boldSystemFont(ofSize: 18)
        
        showAll.frame = CGRect(x: 350, y: 10, width: 200, height: 40)
        showAll.font = .boldSystemFont(ofSize: 15)
        showAll.textColor = .red
        showAll.text = "Все"
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
