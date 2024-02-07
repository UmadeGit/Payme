//
//  PaymeGoalsView.swift
//  Payme
//
//  Created by Ахмад Аброров on 26/01/24.
//

import UIKit


final class PaymeGoalsView: UIView {
    
    let image = UIImageView()
    let titleLabel = UILabel()
    let addGoalButton = UIButton(type: .system)
    
    init() {
        super.init(frame: .zero)
        
        backgroundColor = .rgb(245, 246, 248)
 
        setupView()
    }
    
    func setupView() {
        
        addSubview(image)
        addSubview(titleLabel)
        addSubview(addGoalButton)
        
        image.image = UIImage(named: "jarWithCoins")
        image.translatesAutoresizingMaskIntoConstraints = false
        
        image.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        image.topAnchor.constraint(equalTo: topAnchor, constant: 270).isActive = true
        image.heightAnchor.constraint(equalToConstant: 160).isActive = true
        image.widthAnchor.constraint(equalToConstant: 125).isActive = true
        
        titleLabel.text = "Создайте Payme Goal и копите деньги на Ваши цели просто и удобно"
        titleLabel.font = .boldSystemFont(ofSize: 18)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .center
        
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40).isActive = true
        titleLabel.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 35).isActive = true
        
        addGoalButton.setTitle("Создать Payme Goal", for: .normal)
        addGoalButton.setTitleColor(.rgb(41, 197, 197), for: .normal)
        addGoalButton.tintColor = .rgb(41, 197, 197)
        addGoalButton.setImage(UIImage(systemName: "plus"), for: .normal)
        addGoalButton.backgroundColor = .rgb(196, 242, 243)
        addGoalButton.titleLabel?.font = .boldSystemFont(ofSize: 19)
        addGoalButton.translatesAutoresizingMaskIntoConstraints = false
        addGoalButton.layer.cornerRadius = 10
        addGoalButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -10, bottom: 0, right: 0)
        
        addGoalButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 70).isActive = true
        addGoalButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -70).isActive = true
        addGoalButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 40).isActive = true
        addGoalButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
