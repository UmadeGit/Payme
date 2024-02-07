//
//  CashFlowView.swift
//  Payme
//
//  Created by Ахмад Аброров on 26/01/24.
//

import UIKit

final class CashFlowView: UIView {
    
    let tableView = UITableView()
    let entranceTextLabel = UILabel()
    let entranceLabel = UILabel()
    let costTextLabel = UILabel()
    let costLabel = UILabel()
    
    init() {
        super.init(frame: .zero)
        
        backgroundColor = .white
        
        setupEntranceCosts()
        setupTableView()
    }
    
    func setupTableView() {
        
        
        addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        tableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        tableView.topAnchor.constraint(equalTo: entranceLabel.bottomAnchor, constant: 10).isActive = true
        tableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        
        tableView.register(CashFlowCell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = .white
    }
    
    func setupEntranceCosts() {
        
        addSubview(entranceLabel)
        addSubview(entranceTextLabel)
        addSubview(costLabel)
        addSubview(costTextLabel)
        
        entranceTextLabel.text = "Поступление"
        entranceTextLabel.font = .systemFont(ofSize: 15)
        entranceTextLabel.textColor = .systemGray
        entranceTextLabel.translatesAutoresizingMaskIntoConstraints = false
        
        entranceTextLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        entranceTextLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -200).isActive = true
        entranceTextLabel.topAnchor.constraint(equalTo: topAnchor, constant: 100).isActive = true
        
        entranceLabel.text = "+1 987 000  сум"
        entranceLabel.textColor = .rgb(100, 203, 206)
        entranceLabel.translatesAutoresizingMaskIntoConstraints = false
        entranceLabel.font = .boldSystemFont(ofSize: 19)
        
        entranceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        entranceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -200).isActive = true
        entranceLabel.topAnchor.constraint(equalTo: entranceTextLabel.topAnchor, constant: 30).isActive = true
        
        costTextLabel.text = "Расходы"
        costTextLabel.textColor = .systemGray
        costTextLabel.font = .systemFont(ofSize: 15)
        costTextLabel.translatesAutoresizingMaskIntoConstraints = false
        
        costTextLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 250).isActive = true
        costTextLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        costTextLabel.topAnchor.constraint(equalTo: topAnchor, constant: 100).isActive = true
        
        costLabel.text = "-2 498 040 сум"
        costLabel.textColor = .systemRed
        costLabel.translatesAutoresizingMaskIntoConstraints = false
        costLabel.font = .boldSystemFont(ofSize: 19)
        
        costLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 250).isActive = true
        costLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        costLabel.topAnchor.constraint(equalTo: costTextLabel.topAnchor, constant: 30).isActive = true
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}

