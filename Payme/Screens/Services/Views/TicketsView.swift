//
//  TicketsView.swift
//  Payme
//
//  Created by Ахмад Аброров on 26/01/24.
//

import UIKit

final class TicketsView: UIView {
    
    let image = UIImageView()
    let descriptionLabel = UILabel()
    let costButton = UIButton()
    let agreementLabel = UILabel()
    let addButton = UIButton()
    
    init() {
        super.init(frame: .zero)
        
        backgroundColor = .rgb(245, 246, 248)
        
        setupView()
    }
    
    func setupView() {
        
        addSubview(image)
        addSubview(descriptionLabel)
        addSubview(costButton)
        addSubview(addButton)
        addSubview(agreementLabel)
        
        image.image = UIImage(named: "Camera1")
        image.translatesAutoresizingMaskIntoConstraints = false
        
        image.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        image.topAnchor.constraint(equalTo: topAnchor, constant: 140).isActive = true
        image.heightAnchor.constraint(equalToConstant: 110).isActive = true
        image.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        descriptionLabel.text = "При нарушении ПДД, вы будете получать SMS уведомление о вашем штрафе, с возможностью его погашения онлайн в приложении. Допустимо к добавлению до 5 автомобилей."
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textColor = .systemGray
        descriptionLabel.font = .systemFont(ofSize: 14)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        descriptionLabel.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 80).isActive = true
        
        costButton.setTitle("Стоимость услуги 2 000 сум в месяц за каждое авто", for: .normal)
        costButton.backgroundColor = .systemGray5
        costButton.setTitleColor(.black, for: .normal)
        costButton.translatesAutoresizingMaskIntoConstraints = false
        costButton.titleLabel?.numberOfLines = 0
        costButton.titleLabel?.font = .systemFont(ofSize: 16)
        costButton.layer.cornerRadius = 20
        
        costButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        costButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        costButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        costButton.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 20).isActive = true
        
        agreementLabel.text = "Включая данный сервис, Вы соглашаетесь с условиями Публичной оферты"
        agreementLabel.textAlignment = .center
        agreementLabel.font = .systemFont(ofSize: 17)
        agreementLabel.numberOfLines = 0
        agreementLabel.translatesAutoresizingMaskIntoConstraints = false
        
        agreementLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        agreementLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        agreementLabel.topAnchor.constraint(equalTo: costButton.bottomAnchor, constant: 70).isActive = true
        
        addButton.setTitle("Добавить авто", for: .normal)
        addButton.backgroundColor = .rgb(196, 242, 243)
        addButton.setTitleColor(.rgb(41, 197, 197), for: .normal)
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.titleLabel?.numberOfLines = 0
        addButton.titleLabel?.font = .boldSystemFont(ofSize: 17)
        addButton.layer.cornerRadius = 20
        
        addButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 80).isActive = true
        addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -80).isActive = true
        addButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        addButton.topAnchor.constraint(equalTo: agreementLabel.bottomAnchor, constant: 20).isActive = true
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
