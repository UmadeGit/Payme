//
//  PaymeGoalsVC.swift
//  Payme
//
//  Created by Ахмад Аброров on 24/01/24.
//

import UIKit

class PaymeGoalsVC: UIViewController {
    
    private let mainView = PaymeGoalsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = mainView
        
        title = "Payme Goals"
        
        let leftButton = UIBarButtonItem(
            image: UIImage(systemName: "arrow.left"),
            style: .plain, target: self, action:
                #selector(leftButtonTapped)
        )
        
        leftButton.tintColor = .black
        navigationItem.leftBarButtonItem = leftButton
        tabBarController?.tabBar.isHidden = true
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        tabBarController?.tabBar.isHidden = false
    }
    
    @objc func leftButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
}
