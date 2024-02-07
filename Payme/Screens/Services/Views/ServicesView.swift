//
//  ServicesView.swift
//  Payme
//
//  Created by Ахмад Аброров on 25/01/24.
//

import UIKit

class ServicesView: UIView {
    
    let tableView = UITableView()
    
    var dataArray: [ServiceData] = [
        ServiceData(title: "Payme Goals", description: "Простой способ копить деньги на Ваши цели",
                    size: CGRect(x: 100, y: 20, width: 200, height: 20), image: UIImage(named: "Goals")!),
        ServiceData(title: "Справки и госуслуги", description: nil,
                    size: CGRect(x: 100, y: 35, width: 200, height: 20), image: UIImage(named: "Bank")!),
        ServiceData(title: "Мониторинг платежей", description:  "Включено",
                    size: CGRect(x: 100, y: 20, width: 200, height: 20), image: UIImage(named: "Bill")!),
        ServiceData(title: "Напоминания", description: "Установите напоминание для уведомления об оплате",
                    size: CGRect(x: 100, y: 20, width: 200, height: 20), image: UIImage(named: "Alarm")!),
        ServiceData(title: "Оплата за расчетный счет", description: nil,
                    size: CGRect(x: 100, y: 35, width: 300, height: 20), image: UIImage(named: "Documents")!),
        ServiceData(title: "Уведомления о штрафах ГУБДД", description: nil,
                    size: CGRect(x: 100, y: 35, width: 300, height: 20), image: UIImage(named: "Camera")!),
        ServiceData(title: "Payme Avia", description: "Покупка авиабилетов",
                    size: CGRect(x: 100, y: 20, width: 200, height: 20), image: UIImage(named: "Avia")!),
    ]
    
    init() {
        super.init(frame: .zero)
        
        backgroundColor = .rgb(247, 248, 249)
        
        setupTableView()
        
    }
    
    func setupTableView() {
        addSubview(tableView)
        
        tableView.register(ServicesCell.self, forCellReuseIdentifier: "cell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        tableView.isScrollEnabled = false
        
        tableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        tableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        tableView.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
