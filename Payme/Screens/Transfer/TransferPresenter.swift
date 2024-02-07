//
//  TransferPresenter.swift
//  Payme
//
//  Created by Ахмад Аброров on 29/01/24.
//

import UIKit

protocol TransferPresenterable: AnyObject {
    func numberOfItems(in section: Int) -> Int
    func cellForItem(collectionView: UICollectionView, at indexPath: IndexPath) -> UICollectionViewCell
    func shouldChangeCharactersIn(_ tf: UITextField, range:NSRange, string: String) -> Bool
}


final class TransferPresenter: TransferPresenterable {
    
    private let mainView = TransferView()
    
    func shouldChangeCharactersIn(_ tf: UITextField, range: NSRange, string: String) -> Bool {
        
        let allowedCharacterSet = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)
        guard allowedCharacterSet.isSuperset(of: characterSet) else {
            return false
        }
        
        let currentText = (tf.text ?? "") as NSString
        let newText = currentText.replacingCharacters(in: range, with: string)
        
        if newText.hasPrefix("8600") {
            mainView.tfImageLeftView.image = UIImage(named: "Uzcard")
        } else if newText.hasPrefix("9860") {
            mainView.tfImageLeftView.image = UIImage(named: "Humo")
        } else if newText.hasPrefix("5440") {
            mainView.tfImageLeftView.image = UIImage(named: "Mastercard")
        }
        
        
        if let currentText = tf.text {
            // Проверьте, не превысит ли новая длина 16 символов
            let newLength = currentText.count + string.count - range.length
            if newLength > 19 {
                return false
            }
            
            // Добавьте пробелы после каждых 4 символов
            if newLength % 5 == 0 && newLength > 0 {
                tf.text?.append(" ")
            }
        }
        
        return true
    }
    
    func numberOfItems(in section: Int) -> Int {
        20
    }
    
    func cellForItem(collectionView: UICollectionView, at indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionCell
        
        cell.backgroundColor = .clear
        cell.imageView.layer.cornerRadius = 35
        cell.imageView.backgroundColor = .randomDark
        cell.titleLabel.text = "Abrorov Ahmadbek"
        
        return cell
    }
}
