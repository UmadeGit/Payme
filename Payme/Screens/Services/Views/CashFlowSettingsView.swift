//
//  CashFlowSettingsView.swift
//  Payme
//
//  Created by Ахмад Аброров on 26/01/24.
//

import UIKit

final class CashFlowSettingsView: UIView {
    
    let image = UIImageView()
    let cashFlowLabel = UILabel()
    let paidToLabel = UILabel()
    let costOfServiceLabel = UILabel()
    let descriptionLabel = UILabel()
    let agreementLabel = UILabel()
    var toggleSwitch = UISwitch()
    
    init() {
        super.init(frame: .zero)
        
        backgroundColor = .rgb(245, 246, 248)
        
        setupView()
    }
    
    func setupView() {
        
        addSubview(image)
        addSubview(cashFlowLabel)
        addSubview(paidToLabel)
        addSubview(costOfServiceLabel)
        addSubview(agreementLabel)
        addSubview(descriptionLabel)
        addSubview(toggleSwitch)
  
        image.image = UIImage(named: "Bill1")
        image.translatesAutoresizingMaskIntoConstraints = false
        
        image.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        image.topAnchor.constraint(equalTo: topAnchor, constant: 140).isActive = true
        image.heightAnchor.constraint(equalToConstant: 120).isActive = true
        image.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        cashFlowLabel.text = "Мониторинг платежей"
        cashFlowLabel.font = .boldSystemFont(ofSize: 17)
        cashFlowLabel.textAlignment = .left
        cashFlowLabel.translatesAutoresizingMaskIntoConstraints = false
        
        cashFlowLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        cashFlowLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -200).isActive = true
        cashFlowLabel.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 100).isActive = true
        
        paidToLabel.text = "Услуга оплачена 25.01.24"
        paidToLabel.font = .systemFont(ofSize: 14)
        paidToLabel.textColor = .systemGray
        paidToLabel.translatesAutoresizingMaskIntoConstraints = false
        
        paidToLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        paidToLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -200).isActive = true
        paidToLabel.topAnchor.constraint(equalTo: cashFlowLabel.bottomAnchor, constant: 20).isActive = true
        
        costOfServiceLabel.text = "Стоимость услуги 2 000 сум в месяц"
        costOfServiceLabel.font = .boldSystemFont(ofSize: 17)
        costOfServiceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        costOfServiceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        costOfServiceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -80).isActive = true
        costOfServiceLabel.topAnchor.constraint(equalTo: paidToLabel.bottomAnchor, constant: 20).isActive = true
        
        descriptionLabel.text = "Мониторинг - самый удобный способ отслеживать все операции по всем Вашим картам в одном месте, независимо от того, где Вы совершили покупку: в кафе, магазине или на рынке."
        descriptionLabel.font = .systemFont(ofSize: 15)
        descriptionLabel.numberOfLines = 0
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40).isActive = true
        descriptionLabel.topAnchor.constraint(equalTo: costOfServiceLabel.bottomAnchor, constant: 10).isActive = true
        
        agreementLabel.text = "Включая данный сервис, Вы соглашаетесь с условиями Публичной оферты"
        agreementLabel.numberOfLines = 0
        agreementLabel.font = .systemFont(ofSize: 15)
        agreementLabel.translatesAutoresizingMaskIntoConstraints = false
        
        agreementLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        agreementLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40).isActive = true
        agreementLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 30).isActive = true
        
        toggleSwitch.onTintColor = .rgb(41, 197, 197)
        toggleSwitch.tintColor = .gray
        
        toggleSwitch.translatesAutoresizingMaskIntoConstraints = false
        toggleSwitch.topAnchor.constraint(equalTo: cashFlowLabel.topAnchor, constant: 0).isActive = true
        toggleSwitch.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 350).isActive = true
        toggleSwitch.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 20).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
