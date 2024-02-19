//
//  HomeView.swift
//  Payme
//
//  Created by Ахмад Аброров on 24/01/24.
//

import UIKit

final class HomeView: UIView {
    
    private let backgroundView = UIView(
        frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
    )
    
    //    private let backgroundViewBottom = UIView(
    //        frame: CGRect(x: 0, y: (UIScreen.main.bounds.height / 2) - 30, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height )
    //    )
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(
            frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: frame.size.height),
            collectionViewLayout: createLayout()
        )
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.register(BalanceHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "BalanceHeader")
        collectionView.register(HomeFinanceServicesCell.self, forCellWithReuseIdentifier: "cell1")
        collectionView.register(PaymentSavedPaymentsCell.self, forCellWithReuseIdentifier: "cell2")
        collectionView.register(HomeMyHomeCell.self, forCellWithReuseIdentifier: "cell3")
        collectionView.register(HomePaymentsCell.self, forCellWithReuseIdentifier: "cell4")
        collectionView.register(HomeAdsCell.self, forCellWithReuseIdentifier: "cell5")
        collectionView.register(HomeLastPaymentsCell.self, forCellWithReuseIdentifier: "cell6")
        collectionView.register(HomeBalanceReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "HomeBalanceReusableView")
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    let card = MainButton(type: .card)
    let go = MainButton(type: .card)
    let qr = MainButton(type: .card)
    
    init() {
        super.init(frame: .zero)
        addSubview(backgroundView)
        backgroundView.backgroundColor = .rgb(45, 193, 191)
        //        addSubview(backgroundViewBottom)
        //        backgroundViewBottom.backgroundColor = .rgb(23, 24, 32)
        //        backgroundViewBottom.layer.cornerRadius = 20
        addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        collectionView.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        bringSubviewToFront(collectionView)
        backgroundColor = .white
        
        setupMainButtons()
    }
    
    private func createLayout() -> UICollectionViewLayout {
        UICollectionViewCompositionalLayout { (
            sectionIndex: Int,
            layoutEnvironment: NSCollectionLayoutEnvironment
        ) -> NSCollectionLayoutSection? in
            
            guard let sectionType = SectionType(rawValue: sectionIndex) else { return nil }
            
            switch sectionType {
                
            case .financeServices:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                      heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.46),
                                                       heightDimension: .absolute(70))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
                section.interGroupSpacing = 10
                section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
                section.contentInsets = .init(top: 10, leading: 12, bottom: 10, trailing: 12)
                
                let supplementarySize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                               heightDimension: .absolute(60))
                let supplementaryItem = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: supplementarySize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top)
                section.boundarySupplementaryItems = [supplementaryItem]
                
                let headerSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .fractionalWidth(3/5)
                )
                
                let header = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: headerSize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top
                )
                return section
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
                section.contentInsets = .init(top: 10, leading: 20, bottom: 10, trailing: 12)
                
                return section
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
                section.contentInsets = .init(top: 10, leading: 20, bottom: 10, trailing: 12)
                
                let supplementarySize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                               heightDimension: .absolute(60))
                let supplementaryItem = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: supplementarySize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top)
                section.boundarySupplementaryItems = [supplementaryItem]
                
                return section
            case .ads:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                      heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.9),
                                                       heightDimension: .absolute(100))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
                section.interGroupSpacing = 10
                section.orthogonalScrollingBehavior = .groupPagingCentered
                section.contentInsets = .init(top: 10, leading: 5, bottom: 40, trailing: 10)
                
                let supplementarySize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                               heightDimension: .absolute(60))
                let supplementaryItem = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: supplementarySize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top)
                section.boundarySupplementaryItems = [supplementaryItem]
                
                return section
            case .lastPayments:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                      heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                       heightDimension: .absolute(90))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
                section.interGroupSpacing = 20
                section.contentInsets = .init(top: 10, leading: 15, bottom: 40, trailing: 15)
                
                let supplementarySize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
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
    
    
    func setupMainButtons() {
        
        collectionView.addSubview(card)
        collectionView.addSubview(qr)
        collectionView.addSubview(go)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


