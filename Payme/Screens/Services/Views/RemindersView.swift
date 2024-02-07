//
//  RemindersView.swift
//  Payme
//
//  Created by Ахмад Аброров on 26/01/24.
//

import UIKit

final class RemindersView: UIView {
    
    let image = UIImageView()
    let titleLabel = UILabel()
    let addButton = UIButton()
    
    init() {
        super.init(frame: .zero)
        
        backgroundColor = .rgb(245, 246, 248)
        
        setupView()
    }
    
    func setupView() {
        addSubview(image)
        addSubview(titleLabel)
        addSubview(addButton)
        
        image.image = UIImage(named: "alarmclock")
        image.translatesAutoresizingMaskIntoConstraints = false
        
        image.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        image.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        image.widthAnchor.constraint(equalToConstant: 170).isActive = true
        image.heightAnchor.constraint(equalToConstant: 170).isActive = true
        
        titleLabel.text = "У вас пока нет напоминаний"
        titleLabel.font = .boldSystemFont(ofSize: 18)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 20).isActive = true
        
        addButton.setTitle("+   Добавить напоминание", for: .normal)
        addButton.setTitleColor(.rgb(68, 190, 189), for: .normal)
        addButton.titleLabel?.font = .boldSystemFont(ofSize: 18)
        addButton.backgroundColor = .rgb(174, 234, 233)
        addButton.layer.cornerRadius = 10
        addButton.translatesAutoresizingMaskIntoConstraints = false
        
        addButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60).isActive = true
        addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60).isActive = true
        addButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        addButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
