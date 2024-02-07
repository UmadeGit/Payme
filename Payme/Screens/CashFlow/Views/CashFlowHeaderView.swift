//
//  CashFlowHeader.swift
//  Payme
//
//  Created by Ахмад Аброров on 22/01/24.
//

import UIKit

struct CashFlowHeaderData {
    let title: String
    let cost: String
}

final class CashFlowHeaderView: UIView {
    
    private let titleLabel = UILabel()
    private let costLabel = UILabel()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .rgb(247, 248, 249)
        
        addSubview(titleLabel)
        addSubview(costLabel)
        
        costLabel.frame = CGRect(x: 310, y: 5, width: 300, height: 20)
        titleLabel.frame = CGRect(x: 16, y: 5, width: 300, height: 20)
        
        costLabel.font = .systemFont(ofSize: 13)
        costLabel.textColor = .systemGray
        titleLabel.font = .systemFont(ofSize: 16)
      
    }
    
    func prepare(data: CashFlowHeaderData) {
        costLabel.text = data.cost
        titleLabel.text = data.title
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
