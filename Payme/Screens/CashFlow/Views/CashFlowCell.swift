//
//  CashFlowCell.swift
//  Payme
//
//  Created by Ахмад Аброров on 20/01/24.
//

import UIKit

final class CashFlowCell: UITableViewCell {
    
    let organizationLabel = UILabel()
    let sumLabel = UILabel()
    let timeLabel = UILabel()
    let currencyLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(organizationLabel)
        contentView.addSubview(sumLabel)
        contentView.addSubview(timeLabel)
        contentView.addSubview(currencyLabel)
        
        currencyLabel.frame = CGRect(x: 395, y: 36, width: 40, height: 15)
        sumLabel.frame = CGRect(x: 283, y: 20, width: 110, height: 40)
        organizationLabel.frame = CGRect(x: 15, y: 10, width: 150, height: 75)
        timeLabel.frame = CGRect(x: 380, y: 55, width: 50, height: 20)
        organizationLabel.font = .systemFont(ofSize: 19, weight: .light)
        organizationLabel.numberOfLines = 0
        sumLabel.font = .boldSystemFont(ofSize: 19)
        sumLabel.textAlignment = .right
        timeLabel.font = .systemFont(ofSize: 14, weight: .thin)
        currencyLabel.text = "сум"
        currencyLabel.font = .systemFont(ofSize: 12)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
