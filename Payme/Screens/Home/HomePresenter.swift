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
        case .category:
            return 10
        case .financeServices:
            return 10
        case .savedPayments:
            return 10
        case .ads:
            return 10
        case .myHome:
            return 10
        case .services:
            return 10
        case .lastPayments:
            return 10
        }
    }
    
    func cellForRow(collectionView: UICollectionView, at indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let sectionType = SectionType(rawValue: indexPath.section) else { return UICollectionViewCell() }
        
        switch sectionType {
            
        case .category:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath)
            
            cell.backgroundColor = .init(UIColor(red: 84/255, green: 180/255, blue: 181/255, alpha: 1))
            cell.layer.cornerRadius = 100
            cell.backgroundColor = .orange
            return cell
        case .financeServices:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath)
            
            cell.backgroundColor = .red
            
            return cell
        case .savedPayments:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath)
            
            cell.backgroundColor = .blue
            
            return cell
        case .ads:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath)
            
            cell.backgroundColor = .green
            
            return cell
        case .myHome:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath)
            
            cell.backgroundColor = .purple
            
            return cell
        case .services:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath)
            
            cell.backgroundColor = .white
            
            return cell
        case .lastPayments:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath)
            
            cell.backgroundColor = .orange
            
            return cell
        }
    }
}
