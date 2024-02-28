//
//  PaymentsPresenter.swift
//  Payme
//
//  Created by Ахмад Аброров on 27/01/24.
//

import UIKit

protocol PaymentsPresenterable: AnyObject {
    func numberOfItemsInSection(for section:Int) -> Int
    func cellForRow(collectionView:UICollectionView, at indexPath: IndexPath) -> UICollectionViewCell
    func viewForSupplementaryElementOfKind(collectionView:UICollectionView, at indexPath: IndexPath) -> UICollectionReusableView
}

final class PaymentsPresenter: PaymentsPresenterable {
    
    private var sections: [PaymentsBalanceReusableData] = [
        PaymentsBalanceReusableData(title: "Сохраненные платежи"),
        PaymentsBalanceReusableData(title: "Оплата услуг"),
        PaymentsBalanceReusableData(title: "Мой дом"),
        PaymentsBalanceReusableData(title: "Оплата на местах"),
    ]
    
    func cellForRow(
        collectionView: UICollectionView,
        at indexPath: IndexPath
    ) -> UICollectionViewCell {
        
        guard let sectionType = PaymentSectionType(rawValue: indexPath.section) else { return UICollectionViewCell() }
        
        switch sectionType {
            
        case .savedPayments:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! PaymentSavedPaymentsCell
            cell.backgroundColor = .white
            cell.layer.cornerRadius = 15
            cell.layer.shadowColor = UIColor.black.cgColor
            cell.layer.shadowOpacity = 0.3
            cell.layer.shadowOffset = CGSize(width: 0, height: 3)
            cell.layer.shadowRadius = 3
            cell.layer.masksToBounds = false
            return cell
            
        case .payments:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! PaymentsCell
            cell.backgroundColor = .white
            cell.layer.cornerRadius = 15
            cell.layer.shadowColor = UIColor.black.cgColor
            cell.layer.shadowOpacity = 0.3
            cell.layer.shadowOffset = CGSize(width: 0, height: 3)
            cell.layer.shadowRadius = 3
            cell.layer.masksToBounds = false
            return cell
            
        case .myHome:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath)
            
            cell.backgroundColor = .white
            cell.layer.cornerRadius = 15
            cell.layer.shadowColor = UIColor.black.cgColor
            cell.layer.shadowOpacity = 0.2
            cell.layer.shadowOffset = CGSize(width: 0, height: 3)
            cell.layer.shadowRadius = 3
            cell.layer.masksToBounds = false
            return cell
        case .paymentsInPlaces:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell4", for: indexPath)
            
            cell.backgroundColor = .random
            return cell
        }
    }
    
    func numberOfItemsInSection(
        for section: Int
    ) -> Int {
        guard let sectionType = PaymentSectionType(rawValue: section) else { return 0 }
        
        switch sectionType {
            
        case .savedPayments:
            return 5
        case .payments:
            return 10
        case .myHome:
            return 2
        case .paymentsInPlaces:
            return 3
        }
    }
    
    func viewForSupplementaryElementOfKind(
        collectionView: UICollectionView,
        at indexPath: IndexPath
    ) -> UICollectionReusableView {
        
        guard let sectionType = SectionType(rawValue: indexPath.section) else { return UICollectionReusableView()}
        
        let headerView = collectionView.dequeueReusableSupplementaryView(
            ofKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: "PaymentsBalanceReusableView",
            for: indexPath
        ) as! PaymentsBalanceReusableView
        
        headerView.label.text = sections[sectionType.rawValue].title
        
        return headerView
    }
}
