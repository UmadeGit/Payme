//
//  HomePresenter.swift
//  Payme
//
//  Created by Ахмад Аброров on 24/01/24.
//

import UIKit

protocol HomeViewPresenterable: AnyObject {
    func numberOfItemsInSection(for section:Int) -> Int
    func cellForRow(collectionView:UICollectionView, at indexPath: IndexPath) -> UICollectionViewCell
}

final class HomePresenter: HomeViewPresenterable {
    
    func numberOfItemsInSection(for section: Int) -> Int {
        guard let sectionType = SectionType(rawValue: section) else { return 0 }
        
        switch sectionType {
        case .financeServices:
            return 2
        case .savedPayments:
            return 4
        case .myHome:
            return 2
        case .payments:
            return 10
        case .ads:
            return 4
        case .lastPayments:
            return 3
        }
    }
    
    func cellForRow(collectionView: UICollectionView, at indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let sectionType = SectionType(rawValue: indexPath.section) else { return UICollectionViewCell() }
        
        switch sectionType {
            
        case .financeServices:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! HomeFinanceServicesCell
            
            cell.layer.cornerRadius = 20
            cell.backgroundColor = .white
            cell.layer.shadowColor = UIColor.black.cgColor
            cell.layer.shadowOpacity = 0.2
            cell.layer.shadowOffset = CGSize(width: 0, height: 3)
            cell.layer.shadowRadius = 3
            cell.layer.masksToBounds = false
            
            cell.label.text = "Перевести средства"
            
            return cell
        case .savedPayments:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath)
            cell.backgroundColor = .white
            cell.layer.cornerRadius = 15
            cell.layer.shadowColor = UIColor.black.cgColor
            cell.layer.shadowOpacity = 0.2
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
        case .payments:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell4", for: indexPath)
            
            cell.backgroundColor = .white
            cell.layer.cornerRadius = 15
            cell.layer.shadowColor = UIColor.black.cgColor
            cell.layer.shadowOpacity = 0.2
            cell.layer.shadowOffset = CGSize(width: 0, height: 3)
            cell.layer.shadowRadius = 3
            cell.layer.masksToBounds = false
            
            return cell
        case .ads:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell5", for: indexPath)
            
            cell.backgroundColor = .white
            cell.layer.cornerRadius = 15
            cell.layer.shadowColor = UIColor.black.cgColor
            cell.layer.shadowOpacity = 0.2
            cell.layer.shadowOffset = CGSize(width: 0, height: 3)
            cell.layer.shadowRadius = 3
            cell.layer.masksToBounds = false
            
            return cell
        case .lastPayments:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell6", for: indexPath)
            
            cell.backgroundColor = .white
            cell.layer.cornerRadius = 15
            cell.layer.shadowColor = UIColor.black.cgColor
            cell.layer.shadowOpacity = 0.2
            cell.layer.shadowOffset = CGSize(width: 0, height: 3)
            cell.layer.shadowRadius = 3
            cell.layer.masksToBounds = false
            
            return cell
        }
    }
}
