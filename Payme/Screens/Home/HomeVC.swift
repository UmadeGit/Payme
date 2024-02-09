//
//  HomeVC.swift
//  Payme
//
//  Created by Ахмад Аброров on 24/01/24.
//

import UIKit

enum SectionType: Int, CaseIterable {
    case category = 0
    case financeServices = 1
    case savedPayments = 2
    case ads = 3
    case myHome = 4
    case services = 5
    case lastPayments = 6
}



class HomeVC: UIViewController {
    
    let layer = CAGradientLayer()
    private let mainView = HomeView()
    
    private let presenter: HomeViewPresenterable
    
    init() {
        self.presenter = HomePresenter()
        
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
        
        mainView.collectionView.dataSource = self
        mainView.collectionView.delegate = self
        mainView.go.delegate = self
        mainView.qr.delegate = self
        mainView.card.delegate = self
    }
    
}

extension HomeVC: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int { SectionType.allCases.count }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        presenter.numberOfItemsInSection(for: section)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        presenter.cellForRow(collectionView: collectionView, at: indexPath)
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        viewForSupplementaryElementOfKind kind: String,
        at indexPath: IndexPath
    ) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(
            ofKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: "HomeBalanceReusableView",
            for: indexPath
        )
        
        headerView.backgroundColor = .rgb(45, 193, 191)
        
        return headerView
    }
}

extension HomeVC: MainButtonDelegate {
    func didTappedMainButton(type: MainButtonType) {
        switch type {
        case .card:
            break
        case .qr:
            break
        case .go:
            break
        }
    }
}

//extension HomeVC: UISearchResultsUpdating {
//    func updateSearchResults(for searchController: UISearchController) {
//        //  if let searchText = searchController.searchBar.text?.lowercased() {
//        // Filter your data based on the searchText
//        // Update your UI with the filtered results
//        //  }
//    }
//}



