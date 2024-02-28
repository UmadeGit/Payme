//
//  PaymentsView.swift
//  Payme
//
//  Created by Ахмад Аброров on 27/01/24.
//

import UIKit

struct PaymentsBalanceReusableData {
    let title: String
}

final class PaymentsView: UIView {
    
    private let tableView = UITableView()
    let searchController = UISearchController(searchResultsController: nil)
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(
            frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: frame.size.height),
            collectionViewLayout: createLayout()
        )
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.register(PaymentSavedPaymentsCell.self, forCellWithReuseIdentifier: "cell1")
        collectionView.register(PaymentsCell.self, forCellWithReuseIdentifier: "cell2")
        collectionView.register(MyHomeCell.self, forCellWithReuseIdentifier: "cell3")
        collectionView.register(PaymentsInPlacesCell.self, forCellWithReuseIdentifier: "cell4")
        collectionView.register(PaymentsBalanceReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "PaymentsBalanceReusableView")
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    
    init() {
        super.init(frame: .zero)
        
        addSubview(collectionView)
            
        backgroundColor = .rgb(247, 248, 249)

        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        collectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        
        
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Поиск"
        
        tableView.tableHeaderView = searchController.searchBar
        
        collectionView.backgroundColor = .clear
        
        backgroundColor = .rgb(246, 248, 249)
    }
    
    private func createLayout() -> UICollectionViewLayout {
        UICollectionViewCompositionalLayout { (
            sectionIndex: Int,
            layoutEnvironment: NSCollectionLayoutEnvironment
        ) -> NSCollectionLayoutSection? in
            
            guard let sectionType = PaymentSectionType(rawValue: sectionIndex) else { return nil }
            
            switch sectionType {
                
                //MARK: -  Banner constrint
            case .savedPayments:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                      heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.28),
                                                       heightDimension: .absolute(120))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
                section.interGroupSpacing = 10
                section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
                section.contentInsets = .init(top: 10, leading: 25, bottom: 40, trailing: 10)
                
                let supplementarySize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                               heightDimension: .absolute(40))
                let supplementaryItem = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: supplementarySize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top)
                section.boundarySupplementaryItems = [supplementaryItem]
                
                return section
                //MARK: - Story constrint
            case .payments:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                      heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.28),
                                                       heightDimension: .absolute(120))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
                section.interGroupSpacing = 10
                section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
                section.contentInsets = .init(top: 10, leading: 25, bottom: 40, trailing: 10)
                
                let supplementarySize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                               heightDimension: .absolute(40))
                let supplementaryItem = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: supplementarySize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top)
                section.boundarySupplementaryItems = [supplementaryItem]
                
                return section
                //MARK: - Market constriant
            case .myHome:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                      heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.86),
                                                       heightDimension: .absolute(80))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
                section.interGroupSpacing = 15
                section.orthogonalScrollingBehavior = .groupPagingCentered
                section.contentInsets = .init(top: 10, leading: 25, bottom: 40, trailing: 10)
                
                let supplementarySize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                               heightDimension: .absolute(60))
                let supplementaryItem = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: supplementarySize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top)
                section.boundarySupplementaryItems = [supplementaryItem]
                
                return section
                //MARK: -  Shop Constriant
            case .paymentsInPlaces:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                      heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                       heightDimension: .absolute(110))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
                section.interGroupSpacing = 20
                section.contentInsets = .init(top: 10, leading: 5, bottom: 40, trailing: 5)
                
                let supplementarySize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.9),
                                                               heightDimension: .absolute(60))
                let supplementaryItem = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: supplementarySize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top)
                section.boundarySupplementaryItems = [supplementaryItem]
                
                return section
            }
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
