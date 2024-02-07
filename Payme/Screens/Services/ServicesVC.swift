//
//  ServicesVC.swift
//  Payme
//
//  Created by Ахмад Аброров on 16/01/24.
//

import UIKit

struct ServiceData {
    let title: String
    let description: String?
    let size: CGRect
    let image: UIImage
}

class ServicesVC: UIViewController {
    
    private let mainView = ServicesView()
    
    private let presenter: ServicesViewPresenterable
    
    init(presenter: ServicesPresenter) {
        self.presenter = presenter
        
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Сервисы"
        view = mainView
        
        mainView.tableView.delegate = self
        mainView.tableView.dataSource = self
        presenter.getNavigation(navigationController)
    }
}

extension ServicesVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { mainView.dataArray.count }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        presenter.cellForRowAt(tableView: tableView, at: indexPath)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { 90 }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.didSelectRowAt(tableView: tableView, at: indexPath)
    }
}
