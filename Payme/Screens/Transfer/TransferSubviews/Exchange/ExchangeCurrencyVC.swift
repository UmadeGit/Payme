//
//  ExchangeCurrencyVC.swift
//  Payme
//
//  Created by Ахмад Аброров on 05/02/24.
//

import UIKit

final class ExchangeCurrencyVC: UIViewController {
    
    private let mainView = ExchangeCurrencyView()
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Обмен валюты"
        
        let leftButton = UIBarButtonItem(
            image: UIImage(systemName: "arrow.left"),
            style: .plain, target: self, action:
                #selector(leftButtonTapped)
        )
        tabBarController?.tabBar.isHidden = true
        
        leftButton.tintColor = .black
        navigationItem.leftBarButtonItem = leftButton
        
        
    }
    
    @objc func leftButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        tabBarController?.tabBar.isHidden = false
    }
}
