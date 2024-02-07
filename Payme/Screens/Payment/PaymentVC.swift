//
//  PaymentVC.swift
//  Payme
//
//  Created by Ахмад Аброров on 16/01/24.
//

import UIKit

class PaymentVC: UIViewController {
    
    private let mainView = PaymentsView()
    
    private let presenter: PaymentsPresenterable
    
    init(presenter: PaymentsPresenter) {
        self.presenter = presenter
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Оплата"
        
        mainView.searchController.searchResultsUpdater = self
        navigationItem.searchController = mainView.searchController
        definesPresentationContext = true
        
        mainView.collectionView.dataSource = self
        mainView.collectionView.delegate = self
    }
}

extension PaymentVC: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int { 1 }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int { 4 }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        presenter.cellForItemAt(collectionView, indexPath: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        presenter.didSelectItemAt(collectionView, indexPath: indexPath)
    }
}

extension PaymentVC: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        if let searchText = searchController.searchBar.text?.lowercased() {
            
        }
    }
}
