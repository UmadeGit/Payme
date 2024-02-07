//
//  PaymentsPresenter.swift
//  Payme
//
//  Created by Ахмад Аброров on 27/01/24.
//

import UIKit

protocol PaymentsPresenterable: AnyObject {
    func didSelectItemAt(_ collectionView: UICollectionView, indexPath: IndexPath)
    func cellForItemAt(_ collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell
    
}

final class PaymentsPresenter: PaymentsPresenterable {
    func cellForItemAt(_ collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "cell",
            for: indexPath
        ) as? SavedPaymentsCell else { return UICollectionViewCell() }
        
        switch indexPath.row {
        case 0 :
            cell.backgroundColor = .blue
        case 1 :
            cell.backgroundColor = .gray
        case 2 :
            cell.backgroundColor = .red
        default :
            cell.backgroundColor = .yellow
        }
        
        return cell
    }
    
    func didSelectItemAt(_ collectionView: UICollectionView, indexPath: IndexPath) {
        
    }
    
    
    
    
}
