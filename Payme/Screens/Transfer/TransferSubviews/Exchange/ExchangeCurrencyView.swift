//
//  ExchangeCurrencyView.swift
//  Payme
//
//  Created by Ахмад Аброров on 05/02/24.
//

import UIKit

final class ExchangeCurrencyView: UIView {
    
    let fromLabel = UILabel()
    let toLabel = UILabel()
    let selectCard = UIButton()
    let textField = UITextField()
    
    
    init() {
        super.init(frame: .zero)
        
        backgroundColor = .rgb(247, 248, 249)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
