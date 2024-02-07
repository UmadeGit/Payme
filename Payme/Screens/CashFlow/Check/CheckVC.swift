//
//  CheckVC.swift
//  Payme
//
//  Created by Ахмад Аброров on 24/01/24.
//

import UIKit

final class CheckVC: UIViewController {
    
    let organizationLabel = UILabel()
    let authorizationLeftLabel = UILabel()
    let authorizationRightLabel = UILabel()
    let aidLeftLabel = UILabel()
    let aidRightLabel = UILabel()
    let serviceCostLeftLabel = UILabel()
    let serviceCostRightLabel = UILabel()
    let cardLeftLabel = UILabel()
    let cardRightLabel = UILabel()
    let nameLabel = UILabel()
    let sumLeftLabel = UILabel()
    let sumRightLabel = UILabel()
    let paidLabel = UILabel()
    let dateLabel = UILabel()
    let allPaymentsButton = UIButton()
    let checkMoreLabel = UILabel()
    let viewAnd = UIView()
    let viewAnd1 = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Чек"
        view.backgroundColor = .white
        let leftButton = UIBarButtonItem(
            image: UIImage(systemName: "arrow.left"),
            style: .plain, target: self, action:
                #selector(leftButtonTapped)
        )
        tabBarController?.tabBar.isHidden = true
        
        leftButton.tintColor = .black
        navigationItem.leftBarButtonItem = leftButton
        
        view.addSubview(organizationLabel)
        view.addSubview(authorizationLeftLabel)
        view.addSubview(authorizationRightLabel)
        view.addSubview(aidLeftLabel)
        view.addSubview(aidRightLabel)
        view.addSubview(serviceCostLeftLabel)
        view.addSubview(serviceCostRightLabel)
        view.addSubview(organizationLabel)
        view.addSubview(cardLeftLabel)
        view.addSubview(cardRightLabel)
        view.addSubview(nameLabel)
        view.addSubview(sumLeftLabel)
        view.addSubview(sumRightLabel)
        view.addSubview(dateLabel)
        view.addSubview(allPaymentsButton)
        view.addSubview(paidLabel)
        view.addSubview(checkMoreLabel)
        view.addSubview(viewAnd)
        view.addSubview(viewAnd1)
        
        
        organizationLabel.text = "OOO ATTO TOLOV GLINKA KOCHASI 25 UY"
        organizationLabel.translatesAutoresizingMaskIntoConstraints = false
        organizationLabel.numberOfLines = 0
        organizationLabel.textColor = .systemGray
        
        organizationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        organizationLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -225).isActive = true
        organizationLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 250).isActive = true
        
        authorizationLeftLabel.text = "Код авторизации"
        authorizationLeftLabel.translatesAutoresizingMaskIntoConstraints = false
        authorizationLeftLabel.font = .systemFont(ofSize: 17, weight: .light)
        
        authorizationLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        authorizationLeftLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -225).isActive = true
        authorizationLeftLabel.topAnchor.constraint(equalTo: organizationLabel.bottomAnchor, constant: 20).isActive = true
        
        authorizationRightLabel.text = "645"
        authorizationRightLabel.translatesAutoresizingMaskIntoConstraints = false
        authorizationRightLabel.font = .systemFont(ofSize: 16, weight: .light)
        authorizationRightLabel.textAlignment = .right
        
        authorizationRightLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 360).isActive = true
        authorizationRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        authorizationRightLabel.topAnchor.constraint(equalTo: organizationLabel.bottomAnchor, constant: 20).isActive = true
        
        aidLeftLabel.text = "AID"
        aidLeftLabel.translatesAutoresizingMaskIntoConstraints = false
        aidLeftLabel.font = .systemFont(ofSize: 17, weight: .light)
        
        aidLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        aidLeftLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -225).isActive = true
        aidLeftLabel.topAnchor.constraint(equalTo: authorizationLeftLabel.bottomAnchor, constant: 15).isActive = true
        
        aidRightLabel.text = "20405773564"
        aidRightLabel.font = .systemFont(ofSize: 16, weight: .light)
        aidRightLabel.translatesAutoresizingMaskIntoConstraints = false
        aidRightLabel.textAlignment = .right
        
        aidRightLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 280).isActive = true
        aidRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        aidRightLabel.topAnchor.constraint(equalTo: authorizationLeftLabel.bottomAnchor, constant: 15).isActive = true
        
        serviceCostLeftLabel.text = "Стоимость услуги"
        serviceCostLeftLabel.translatesAutoresizingMaskIntoConstraints = false
        serviceCostLeftLabel.font = .systemFont(ofSize: 17, weight: .light)
        
        serviceCostLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        serviceCostLeftLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -225).isActive = true
        serviceCostLeftLabel.topAnchor.constraint(equalTo: aidLeftLabel.bottomAnchor, constant: 15).isActive = true
        
        serviceCostRightLabel.text = "0.00 сум"
        serviceCostRightLabel.font = .systemFont(ofSize: 16, weight: .light)
        serviceCostRightLabel.translatesAutoresizingMaskIntoConstraints = false
        serviceCostRightLabel.textAlignment = .right
        
        serviceCostRightLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 280).isActive = true
        serviceCostRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        serviceCostRightLabel.topAnchor.constraint(equalTo: aidLeftLabel.bottomAnchor, constant: 15).isActive = true
        
        checkMoreLabel.text = "Подробнее"
        checkMoreLabel.textAlignment = .right
        checkMoreLabel.textColor = .rgb(41, 197, 197)
        checkMoreLabel.font = .boldSystemFont(ofSize: 18)
        checkMoreLabel.translatesAutoresizingMaskIntoConstraints = false
        
        checkMoreLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 280).isActive = true
        checkMoreLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        checkMoreLabel.topAnchor.constraint(equalTo: serviceCostLeftLabel.bottomAnchor, constant: 25).isActive = true
        
        
        viewAnd.backgroundColor = .rgbAll(230)
        viewAnd.translatesAutoresizingMaskIntoConstraints = false
        
        viewAnd.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        viewAnd.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        viewAnd.topAnchor.constraint(equalTo: checkMoreLabel.bottomAnchor, constant: 25).isActive = true
        viewAnd.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        cardLeftLabel.text = "Карта"
        cardLeftLabel.translatesAutoresizingMaskIntoConstraints = false
        cardLeftLabel.font = .systemFont(ofSize: 17, weight: .light)
        
        cardLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        cardLeftLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -225).isActive = true
        cardLeftLabel.topAnchor.constraint(equalTo: viewAnd.bottomAnchor, constant: 25).isActive = true
        
        cardRightLabel.text = "5440 81** **** 1128"
        cardRightLabel.font = .systemFont(ofSize: 16, weight: .light)
        cardRightLabel.translatesAutoresizingMaskIntoConstraints = false
        cardRightLabel.textAlignment = .right
        
        cardRightLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200).isActive = true
        cardRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        cardRightLabel.topAnchor.constraint(equalTo: viewAnd.bottomAnchor, constant: 15).isActive = true
        
        nameLabel.text = "Umade"
        nameLabel.font = .systemFont(ofSize: 17, weight: .light)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.textAlignment = .right
        
        nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 280).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        nameLabel.topAnchor.constraint(equalTo: cardRightLabel.bottomAnchor, constant: 15).isActive = true
        
        viewAnd1.backgroundColor = .rgbAll(230)
        viewAnd1.translatesAutoresizingMaskIntoConstraints = false
        
        viewAnd1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        viewAnd1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        viewAnd1.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 15).isActive = true
        viewAnd1.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        sumLeftLabel.text = "Сумма платежа"
        sumLeftLabel.translatesAutoresizingMaskIntoConstraints = false
        sumLeftLabel.font = .systemFont(ofSize: 17, weight: .light)
        
        sumLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        sumLeftLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -225).isActive = true
        sumLeftLabel.topAnchor.constraint(equalTo: viewAnd1.bottomAnchor, constant: 15).isActive = true
        
        sumRightLabel.text = "-345 000.00 сум"
        sumRightLabel.font = .boldSystemFont(ofSize: 17)
        sumRightLabel.translatesAutoresizingMaskIntoConstraints = false
        sumRightLabel.textAlignment = .right
        
        sumRightLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200).isActive = true
        sumRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        sumRightLabel.topAnchor.constraint(equalTo: viewAnd1.bottomAnchor, constant: 15).isActive = true
        
        paidLabel.text = "Оплачено"
        paidLabel.textColor = .rgb(41, 197, 197)
        paidLabel.translatesAutoresizingMaskIntoConstraints = false
        paidLabel.font = .systemFont(ofSize: 17)
        
        paidLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35).isActive = true
        paidLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -225).isActive = true
        paidLabel.topAnchor.constraint(equalTo: sumLeftLabel.bottomAnchor, constant: 15).isActive = true
        
        dateLabel.text = "19.01.2024 22:07"
        dateLabel.font = .systemFont(ofSize: 17, weight: .light)
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.textAlignment = .right
        
        dateLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200).isActive = true
        dateLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        dateLabel.topAnchor.constraint(equalTo: sumLeftLabel.bottomAnchor, constant: 15).isActive = true
        
//        allPaymentsButton.setTitle("Все платежи поставщика", for: .normal)
//        allPaymentsButton.setTitleColor(.black, for: .normal)
//        allPaymentsButton.titleLabel?.font = .boldSystemFont(ofSize: 17)
//        allPaymentsButton.translatesAutoresizingMaskIntoConstraints = false
//        
//        allPaymentsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
//        allPaymentsButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
//        allPaymentsButton.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 30).isActive = true
//        allPaymentsButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        tabBarController?.tabBar.isHidden = false
    }
    
    @objc func leftButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
}
