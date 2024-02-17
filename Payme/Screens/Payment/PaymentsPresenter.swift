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
}

final class PaymentsPresenter: PaymentsPresenterable {
    func cellForRow(collectionView: UICollectionView, at indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let sectionType = PaymentSectionType(rawValue: indexPath.section) else { return UICollectionViewCell() }
        
        switch sectionType {
        case .savedPayments:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath)
            cell.backgroundColor = .random
            return cell
            
        case .payments:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath)
            cell.backgroundColor = .random
            return cell
            
        case .myHome:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath)
            
            cell.backgroundColor = .random
            return cell
        case .paymentsInPlaces:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell4", for: indexPath)
            
            cell.backgroundColor = .random
            return cell
        }
    }
    
    func numberOfItemsInSection(for section: Int) -> Int {
        guard let sectionType = PaymentSectionType(rawValue: section) else { return 0 }
        
        switch sectionType {
            
        case .savedPayments:
            return 2
        case .payments:
            return 2
        case .myHome:
            return 2
        case .paymentsInPlaces:
            return 5
        }
    }
}
