//
//  BalanceHeader.swift
//  Payme
//
//  Created by Ахмад Аброров on 19/02/24.
//

import UIKit

enum typeButton {
    case walletAndCards
    case credits
    case deposits
}

protocol MyHomeHeaderDelegate: AnyObject {
    func didTouchFalonButton()
}

final class BalanceHeader: UICollectionReusableView {
    
    private lazy var mainStack: UIStackView = {
        return .getStack(axis: .vertical, distribution: .fill, align: .center, spacing: 20)
    }()
    
    private lazy var firstStack: UIStackView = {
        return .getStack(axis: .horizontal, distribution: .fill, align: .fill, spacing: 0)
    }()
    
    private lazy var commonBalanceLbl: UILabel = {
        let lbl = UILabel()
        lbl.font = .boldSystemFont(ofSize: 16)
        lbl.textColor = .white
        lbl.textAlignment = .center
        lbl.text = "Общий баланс"
        lbl.numberOfLines = 1
        return lbl
    }()
    
    private lazy var secondStack: UIStackView = {
        return .getStack(axis: .horizontal, distribution: .fill, align: .fill, spacing: 20)
    }()
    
    private lazy var blncLbl: UILabel = {
        let lbl = UILabel()
        lbl.font = .boldSystemFont(ofSize: 27)
        lbl.textColor = .white
        lbl.textAlignment = .justified
        lbl.text = "107 972 сум"
        lbl.numberOfLines = 1
        return lbl
    }()
    
    private lazy var eyeBtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle(nil, for: .normal)
        btn.setImage(UIImage(systemName: "eye"), for: .normal)
        btn.tintColor = .white
        btn.backgroundColor = .clear
        return btn
    }()
    
    private lazy var sliderBtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle(nil, for: .normal)
        btn.setImage(UIImage(systemName: "slider.horizontal.3"), for: .normal)
        btn.tintColor = .white
        btn.backgroundColor = .clear
        return btn
    }()
    
    private lazy var thridStack: UIStackView = {
        return .getStack(axis: .horizontal, distribution: .fill, align: .fill, spacing: 20)
    }()
    
    private lazy var cashFlowLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = .boldSystemFont(ofSize: 17)
        lbl.textColor = .white
        lbl.textAlignment = .justified
        lbl.text = "Расход за Февраль - 3 598 880 сум"
        lbl.numberOfLines = 1
        return lbl
    }()
    
    private lazy var fourstStack: UIStackView = {
        return .getStack(axis: .horizontal, distribution: .fillEqually, align: .fill, spacing: 30)
    }()
    
    let walletAndCards = LabelPlusButton(title: "Мои карты", imgName: "banknote")
    
    let credits = LabelPlusButton(title: "Payme Go", imgName: "door.french.open")

    let deposits = LabelPlusButton(title: "QR оплата", imgName: "aspectratio")
    
    weak var delegate: MyHomeHeaderDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        
        backgroundColor = .rgb(45, 193, 191)

        
//        walletAndCards.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func walletPressed() {
        delegate?.didTouchFalonButton()
    }
    
    private func setupUI() {
        addSubview(mainStack)
        mainStack.translatesAutoresizingMaskIntoConstraints = false
        mainStack.topAnchor.constraint(equalTo: topAnchor, constant: 30).isActive = true
        mainStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
        mainStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30).isActive = true
        mainStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20).isActive = true
        
        mainStack.addArrangedSubview(firstStack)
        mainStack.addArrangedSubview(secondStack)
        mainStack.addArrangedSubview(thridStack)
        mainStack.addArrangedSubview(fourstStack)
        
        firstStack.addArrangedSubview(commonBalanceLbl)
        
        secondStack.addArrangedSubview(eyeBtn)
        secondStack.addArrangedSubview(blncLbl)
        secondStack.addArrangedSubview(sliderBtn)
        
        thridStack.addArrangedSubview(cashFlowLabel)
        
        fourstStack.addArrangedSubview(walletAndCards)
        fourstStack.addArrangedSubview(credits)
        fourstStack.addArrangedSubview(deposits)
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(walletPressed))
        walletAndCards.addGestureRecognizer(gesture)
        
        commonBalanceLbl.setContentCompressionResistancePriority(.defaultHigh, for: .vertical)
        commonBalanceLbl.setContentHuggingPriority(.defaultHigh, for: .vertical)
        
    }
}
