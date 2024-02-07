//
//  TransferView.swift
//  Payme
//
//  Created by Ахмад Аброров on 29/01/24.
//

import UIKit

final class TransferView: UIView {
    
    lazy var receiversCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = .init(width: 82, height: 116)
        layout.minimumLineSpacing = 28
        layout.minimumInteritemSpacing = 10
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(
            frame: CGRect(x: 0, y: 270, width: UIScreen.main.bounds.width, height: 140),
            collectionViewLayout: layout
        )
        collectionView.backgroundColor = .clear
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(CollectionCell.self, forCellWithReuseIdentifier: "cell")
        
        return collectionView
    }()
    
    var tfImageRightView = UIImageView()
    var tfImageLeftView = UIImageView()
    let forWhomLabel = UILabel()
    var cardNumberLabel = UILabel()
    var tf = UITextField()
    let receiversButton = UIButton()
    let giftButton = UIButton()
    let exchangeCurrencyButton = UIButton()
    let transferToYourselfButton = UIButton()
    let myContactsButton = UIButton()
    var transferImage = UIImageView()
    var exchangeImage = UIImageView()
    var contactImage = UIImageView()
    
    init() {
        super.init(frame: .zero)
        
        backgroundColor = .rgb(247, 248, 249)
        
        addSubview(receiversCollectionView)
        setupView()
    }
    
    func setupView() {
        
        addSubview(forWhomLabel)
        addSubview(giftButton)
        addSubview(receiversButton)
        addSubview(tf)
        addSubview(cardNumberLabel)
        addSubview(exchangeCurrencyButton)
        addSubview(transferToYourselfButton)
        addSubview(myContactsButton)
        transferToYourselfButton.addSubview(transferImage)
        myContactsButton.addSubview(contactImage)
        exchangeCurrencyButton.addSubview(exchangeImage)
        
        forWhomLabel.text = "Кому:"
        forWhomLabel.font = .boldSystemFont(ofSize: 18)
        forWhomLabel.translatesAutoresizingMaskIntoConstraints = false
        
        forWhomLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        forWhomLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -200).isActive = true
        forWhomLabel.topAnchor.constraint(equalTo: topAnchor, constant: 140).isActive = true
        
        cardNumberLabel.text = "Номер карты или телефона"
        cardNumberLabel.font = .systemFont(ofSize: 13)
        cardNumberLabel.textColor = .gray
        cardNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        
        cardNumberLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40).isActive = true
        cardNumberLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -150).isActive = true
        cardNumberLabel.topAnchor.constraint(equalTo: forWhomLabel.bottomAnchor, constant: 30).isActive = true
        
        tf.placeholder = "Номер карты или телефона"
        tf.textAlignment = .left
        tf.layer.cornerRadius = 10
        tf.backgroundColor = .white
        tf.translatesAutoresizingMaskIntoConstraints = false
        
        tf.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        tf.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        tf.topAnchor.constraint(equalTo: cardNumberLabel.bottomAnchor, constant: 5).isActive = true
        tf.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        let leftView = UIView(frame: CGRect(x: 0, y: 0, width: 65, height: 50))
        tf.leftView = leftView
        tf.leftViewMode = .always
        
        tfImageRightView.image = UIImage(systemName: "creditcard.viewfinder")
        tfImageRightView.frame = CGRect(x: 345, y: 12, width: 33, height: 27)
        tfImageRightView.tintColor = .gray
        tf.addSubview(tfImageRightView)
        
        tfImageLeftView.image = UIImage(systemName: "creditcard.fill")
        tfImageLeftView.frame = CGRect(x: 20, y: 12, width: 33, height: 24)
        tfImageLeftView.tintColor = .systemGray3
        leftView.addSubview(tfImageLeftView)
        
        receiversButton.setTitle("Все получатели", for: .normal)
        receiversButton.setTitleColor(.rgb(23, 177, 177), for: .normal)
        receiversButton.titleLabel?.font = .boldSystemFont(ofSize: 19)
        receiversButton.translatesAutoresizingMaskIntoConstraints = false
        
        receiversButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        receiversButton.topAnchor.constraint(equalTo: tf.bottomAnchor, constant: 160).isActive = true
        
        giftButton.setTitle("Добавить открытку", for: .normal)
        giftButton.backgroundColor = .rgb(23, 177, 177)
        giftButton.layer.cornerRadius = 10
        giftButton.titleLabel?.font = .boldSystemFont(ofSize: 19)
        giftButton.titleLabel?.textAlignment = .left
        giftButton.translatesAutoresizingMaskIntoConstraints = false
        
        giftButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        giftButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        giftButton.topAnchor.constraint(equalTo: receiversButton.bottomAnchor, constant: 180).isActive = true
        giftButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        transferToYourselfButton.setTitle("Перевод на свою карту", for: .normal)
        transferToYourselfButton.setTitleColor(.black, for: .normal)
        transferToYourselfButton.titleLabel?.font = .systemFont(ofSize: 17, weight: .light)
        transferToYourselfButton.titleLabel?.textAlignment = .natural
        transferToYourselfButton.titleLabel?.numberOfLines = 0
        transferToYourselfButton.contentVerticalAlignment = .bottom
        transferToYourselfButton.backgroundColor = .white
        transferToYourselfButton.layer.cornerRadius = 10
        transferToYourselfButton.layer.shadowColor = UIColor.black.cgColor
        transferToYourselfButton.layer.shadowOpacity = 0.3
        transferToYourselfButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        transferToYourselfButton.layer.shadowRadius = 3
        transferToYourselfButton.layer.masksToBounds = false
        
        transferToYourselfButton.translatesAutoresizingMaskIntoConstraints = false
        
        transferToYourselfButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        transferToYourselfButton.topAnchor.constraint(equalTo: giftButton.bottomAnchor, constant: 15).isActive = true
        transferToYourselfButton.heightAnchor.constraint(equalToConstant: 115).isActive = true
        transferToYourselfButton.widthAnchor.constraint(equalToConstant: 110).isActive = true
        
        exchangeCurrencyButton.setTitle("Обмен валюты", for: .normal)
        exchangeCurrencyButton.setTitleColor(.black, for: .normal)
        exchangeCurrencyButton.backgroundColor = .white
        exchangeCurrencyButton.titleLabel?.font = .systemFont(ofSize: 17, weight: .light)
        exchangeCurrencyButton.layer.cornerRadius = 10
        exchangeCurrencyButton.contentVerticalAlignment = .bottom
        exchangeCurrencyButton.titleLabel?.numberOfLines = 0
        exchangeCurrencyButton.layer.shadowColor = UIColor.black.cgColor
        exchangeCurrencyButton.layer.shadowOpacity = 0.3
        exchangeCurrencyButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        exchangeCurrencyButton.layer.shadowRadius = 3
        exchangeCurrencyButton.layer.masksToBounds = false
        
        exchangeCurrencyButton.translatesAutoresizingMaskIntoConstraints = false
        
        exchangeCurrencyButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25).isActive = true
        exchangeCurrencyButton.trailingAnchor.constraint(equalTo: transferToYourselfButton.leadingAnchor, constant: -25).isActive = true
        exchangeCurrencyButton.topAnchor.constraint(equalTo: giftButton.bottomAnchor, constant: 15).isActive = true
        exchangeCurrencyButton.heightAnchor.constraint(equalToConstant: 115).isActive = true
        
        myContactsButton.setTitle("Мои контакты", for: .normal)
        myContactsButton.setTitleColor(.black, for: .normal)
        myContactsButton.backgroundColor = .white
        myContactsButton.titleLabel?.font = .systemFont(ofSize: 17, weight: .light)
        myContactsButton.titleLabel?.textAlignment = .center
        myContactsButton.layer.cornerRadius = 10
        myContactsButton.contentVerticalAlignment = .bottom
        myContactsButton.titleLabel?.numberOfLines = 0
        myContactsButton.layer.shadowColor = UIColor.black.cgColor
        myContactsButton.layer.shadowOpacity = 0.3
        myContactsButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        myContactsButton.layer.shadowRadius = 3
        myContactsButton.layer.masksToBounds = false
        myContactsButton.translatesAutoresizingMaskIntoConstraints = false
        
        myContactsButton.leadingAnchor.constraint(equalTo: transferToYourselfButton.trailingAnchor, constant: 25).isActive = true
        myContactsButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25).isActive = true
        myContactsButton.topAnchor.constraint(equalTo: giftButton.bottomAnchor, constant: 15).isActive = true
        myContactsButton.heightAnchor.constraint(equalToConstant: 115).isActive = true
        
        transferImage.frame = CGRect(x: 20, y: 10, width: 60, height: 50)
        transferImage.image = UIImage(named: "Transfer")
        
        exchangeImage.frame = CGRect(x: 25, y: 10, width: 60, height: 50)
        exchangeImage.image = UIImage(named: "Exchange")
        
        contactImage.frame = CGRect(x: 25, y: 10, width: 60, height: 50)
        contactImage.image = UIImage(named: "Contacts")
        
        
        
                
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

