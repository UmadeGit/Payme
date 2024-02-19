//
//  BalanceHeader.swift
//  Payme
//
//  Created by Ахмад Аброров on 19/02/24.
//

import UIKit

final class BalanceHeader: UICollectionReusableView {
    
    private lazy var commonBalanceLbl: UILabel = {
            let lbl = UILabel()
            lbl.font = .systemFont(ofSize: 13)
            lbl.textColor = .white
            lbl.textAlignment = .center
            lbl.text = "Umumiy balans"
            lbl.numberOfLines = 1
            return lbl
        }()
        
    private lazy var blncLbl: UILabel = {
            let lbl = UILabel()
            lbl.font = .boldSystemFont(ofSize: 17)
            lbl.textColor = .white
            lbl.textAlignment = .justified
            lbl.text = "Balansni ko'rsatish"
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

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initUI() {
        addSubview(commonBalanceLbl)
        commonBalanceLbl.frame = .init(x: 10, y: 10, width: frame.width - 20, height: frame.height - 20)
    }
    
}
