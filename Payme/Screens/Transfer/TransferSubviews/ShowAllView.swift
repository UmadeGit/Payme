//
//  ShowAllView.swift
//  Payme
//
//  Created by Ахмад Аброров on 31/01/24.
//

import UIKit

final class ShowAllView: UIView {
    
    let searchController = UISearchController()
    let tableView = UITableView()
        
    init() {
        super.init(frame: .zero)
        
        backgroundColor = .rgb(247, 248, 249)
        
        setupView()
        setupTableView()
    }
    
    func setupView() {
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Найти"
        
    }
    
    func setupTableView() {
        
        
        addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        tableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        
        tableView.register(ShowAllCell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
