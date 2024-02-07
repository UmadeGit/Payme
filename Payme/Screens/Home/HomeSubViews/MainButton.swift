//
//  MainButton.swift
//  Payme
//
//  Created by Ахмад Аброров on 31/01/24.
//

import UIKit

enum MainButtonType {
    case card
    case qr
    case go
    
    func getTitle() -> String {
        switch self {
        case .card:
            return "Card"
        case .qr:
            return "QR"
        case .go:
            return "GO"
        }
    }
    
    func getButtonImageName() -> String {
        switch self {
        case .card:
            return "Card"
        case .qr:
            return "QR"
        case .go:
            return "GO"
        }
    }
}

protocol MainButtonDelegate: AnyObject {
    func didTappedMainButton(type: MainButtonType)
}

final class MainButton: UIView {
    
    weak var delegate: MainButtonDelegate?
    private let type: MainButtonType
    
    let title = UILabel()
    let button = UIButton()
    
    init(type: MainButtonType) {
        self.type = type
        super.init(frame: .zero)
        
        
        title.text = type.getTitle()
        button.setImage(UIImage(named: type.getButtonImageName()), for: .normal)
    }
    
    
    @objc func buttontapped() {
        delegate?.didTappedMainButton(type: type)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
