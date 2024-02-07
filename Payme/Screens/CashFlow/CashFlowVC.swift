//
//  CashFlowVC.swift
//  Payme
//
//  Created by Ахмад Аброров on 16/01/24.
//

import UIKit


final class CashFlowVC: UIViewController {
    
    private let mainView = CashFlowView()

    private let presenter: CashFlowViewPresenterable
    
    init(presenter: CashFlowViewPresenterable) {
        self.presenter = presenter
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Мониторинг"
        view = mainView
        
        mainView.tableView.dataSource = self
        mainView.tableView.delegate = self
    }
}


extension CashFlowVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter.numberOfRows(in: section)
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat { 35 }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        presenter.sections.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = CashFlowHeaderView()
        header.prepare(data: presenter.sections[section])
        
        return header
    }
     
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        presenter.cellForRowAt(tableView: tableView, at: indexPath)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { 90 }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(CheckVC(), animated: true)
    }
}
