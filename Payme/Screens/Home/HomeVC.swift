//
//  HomeVC.swift
//  Payme
//
//  Created by Ахмад Аброров on 24/01/24.
//

import UIKit

enum SectionType: Int, CaseIterable {
    case financeServices = 0
    case savedPayments = 1
    case myHome = 2
    case payments = 3
    case ads = 4
    case lastPayments = 5
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
    
        if indexPath.item == 0 {
            let headerView = collectionView.dequeueReusableSupplementaryView(
                ofKind: UICollectionView.elementKindSectionHeader,
                withReuseIdentifier: "BalanceHeader",
                for: indexPath
            )
            return headerView

        } else {
            let headerView = collectionView.dequeueReusableSupplementaryView(
                ofKind: UICollectionView.elementKindSectionHeader,
                withReuseIdentifier: "HomeBalanceReusableView",
                for: indexPath
            )
            return headerView

        }
        
//        headerView.backgroundColor = .white
        
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



