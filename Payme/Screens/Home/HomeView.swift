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
    
    private let backgroundViewBottom = UIView(
        frame: CGRect(x: 0, y: (UIScreen.main.bounds.height / 2) - 30, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height )
    )
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(
            frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: frame.size.height),
            collectionViewLayout: createLayout()
        )
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell1")
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell2")
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
        addSubview(backgroundViewBottom)
        backgroundViewBottom.backgroundColor = .rgb(23, 24, 32)
        backgroundViewBottom.layer.cornerRadius = 20
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
               
    
    
    func createLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout { (
            sectionIndex: Int,
            layoutEnvironment: NSCollectionLayoutEnvironment
        ) -> NSCollectionLayoutSection? in
            let section: NSCollectionLayoutSection
            
            if sectionIndex == SectionType.category.rawValue {
                
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                    
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.9), heightDimension: .absolute(100))
                let group: NSCollectionLayoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                
                group.contentInsets = .init(top: 10, leading: 16, bottom: 0, trailing: 10)
                
                let headerSize: NSCollectionLayoutSize = .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(300))
                let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
                
                
                section = NSCollectionLayoutSection(group: group)
                section.interGroupSpacing = 10
                section.orthogonalScrollingBehavior = .groupPagingCentered
                section.contentInsets = .init(top: 10, leading: 0, bottom: 10, trailing: 0)
                section.orthogonalScrollingBehavior = .groupPagingCentered
                section.boundarySupplementaryItems = [header]
            } else if sectionIndex == SectionType.lastPayments.rawValue {
    
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1.0))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                let item2 = NSCollectionLayoutItem(layoutSize: itemSize)
                item.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 0)
                item2.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 0)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(200))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item, item2])
                
                group.contentInsets = .init(top: 10, leading: 16, bottom: 0, trailing: 10)
                
                let section = NSCollectionLayoutSection(group: group)

                
                return section
            } else {
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                    
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.9), heightDimension: .absolute(100))
                let group: NSCollectionLayoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                
                group.contentInsets = .init(top: 10, leading: 16, bottom: 0, trailing: 10)
                
                let headerSize: NSCollectionLayoutSize = .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(300))
                let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
                
                
                section = NSCollectionLayoutSection(group: group)
                section.interGroupSpacing = 10
                section.orthogonalScrollingBehavior = .groupPagingCentered
                section.contentInsets = .init(top: 10, leading: 0, bottom: 10, trailing: 0)
                section.orthogonalScrollingBehavior = .groupPagingCentered
            }
            return section
        }
        return layout
    }
        
        func setupMainButtons() {
            
           
            
                        
            collectionView.addSubview(card)
            collectionView.addSubview(qr)
            collectionView.addSubview(go)
            
       //     card.setImage(UIImage(systemName: "creditcard"), for: .normal)
           // cardsButton.translatesAutoresizingMaskIntoConstraints = false
            
//            cardsButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -300).isActive = true
//            cardsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35).isActive = true
//            cardsButton.topAnchor.constraint(equalTo: expenditureLabel.bottomAnchor, constant: 60).isActive = true
            
            
            
//            paymeGOButton.setImage(UIImage(systemName: "creditcard"), for: .normal)
//            paymeGOButton.backgroundColor = .white
//            paymeGOButton.layer.cornerRadius = 40
//            paymeGOButton.frame = CGRect(x: 178, y: 155, width: 80, height: 80)
//            
//            qrPaymentButton.setImage(UIImage(systemName: "qrcode.viewfinder"), for: .normal)
//            qrPaymentButton.backgroundColor = .white
//            qrPaymentButton.layer.cornerRadius = 40
//            qrPaymentButton.frame = CGRect(x: 320, y: 155, width: 80, height: 80)
//            
//            
//            cardsLabel.text = "My cards"
//            cardsLabel.textColor = .white
//            cardsLabel.font = .boldSystemFont(ofSize: 16)
//            cardsLabel.frame = CGRect(x: 40, y: 255, width: 80, height: 20)
//            
//            paymeGOLabel.text = "Payme GO"
//            paymeGOLabel.textColor = .white
//            paymeGOLabel.font = .boldSystemFont(ofSize: 16)
//            paymeGOLabel.frame = CGRect(x: 178, y: 255, width: 120, height: 20)
//            
//            qrPaymentLabel.text = "QR payment"
//            qrPaymentLabel.textColor = .white
//            qrPaymentLabel.font = .boldSystemFont(ofSize: 16)
//            qrPaymentLabel.frame = CGRect(x: 320, y: 255, width: 120, height: 20)
//        }
//        
//        func setupBalance() {
//            
//            let balanceLabel = UILabel()
//            let balanceButton = UIButton()
//            let expenditureLabel = UILabel()
//            
//            collectionView.addSubview(expenditureLabel)
//            collectionView.addSubview(balanceButton)
//            collectionView.addSubview(balanceLabel)
//            
//            balanceLabel.text = "Total Balance"
//            balanceLabel.textColor = .white
//            balanceLabel.frame = CGRect(x: 160, y: 30, width: 150, height: 20)
//            balanceLabel.font = .boldSystemFont(ofSize: 17)
//            
//            
//            balanceButton.setTitle("312 123 sum", for: .normal)
//            balanceButton.setTitleColor(.white, for: .normal)
//            balanceButton.frame = CGRect(x: 110, y: 55, width: 200, height: 30)
//            balanceButton.titleLabel?.font = .boldSystemFont(ofSize: 30)
//            
//          
//            
//            expenditureLabel.text = "Expenditure for January - 1 888 999 sum"
//            expenditureLabel.textColor = .white
//            expenditureLabel.font = .boldSystemFont(ofSize: 15)
//            expenditureLabel.frame = CGRect(x: 60, y: 105, width: 300, height: 20)
//            
           
        }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
    
    
