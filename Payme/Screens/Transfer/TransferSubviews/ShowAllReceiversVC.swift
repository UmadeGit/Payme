//
//  ShowAllReceiversVC.swift
//  Payme
//
//  Created by Ахмад Аброров on 31/01/24.
//

import UIKit

struct ShowAllData {
    var name: String
    var card: String
}

final class ShowAllReceiversVC: UIViewController {
    
    private let mainView = ShowAllView()
    
    private let presenter: ShowAllPresenterable
    
    init(presenter: ShowAllPresenterable) {
        self.presenter = presenter
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Получатели"
        
        let leftButton = UIBarButtonItem(
            image: UIImage(systemName: "arrow.left"),
            style: .plain, target: self, action:
                #selector(leftButtonTapped)
        )
        
        leftButton.tintColor = .black
        navigationItem.leftBarButtonItem = leftButton
        tabBarController?.tabBar.isHidden = true
        
        mainView.searchController.searchResultsUpdater = self
        navigationItem.searchController = mainView.searchController
        definesPresentationContext = true
        
        mainView.tableView.dataSource = self
        mainView.tableView.delegate = self
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        tabBarController?.tabBar.isHidden = false
    }
    
    @objc func leftButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
}

extension ShowAllReceiversVC: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        if let searchText = searchController.searchBar.text?.lowercased() {
        }
    }
}

extension ShowAllReceiversVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { 20 }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        presenter.cellForRowAt(tableView, indexPath: indexPath)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        70
    }
}

