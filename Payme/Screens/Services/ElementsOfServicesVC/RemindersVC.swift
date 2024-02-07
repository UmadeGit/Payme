//
//  RemindersVC.swift
//  Payme
//
//  Created by Ахмад Аброров on 24/01/24.
//

import UIKit

class RemindersVC: UIViewController {
    
    private let mainView = RemindersView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Мои напоминания"
        
        let leftButton = UIBarButtonItem(
            image: UIImage(systemName: "arrow.left"),
            style: .plain, target: self, action:
                #selector(leftButtonTapped)
        )
        tabBarController?.tabBar.isHidden = true
        
        leftButton.tintColor = .black
        navigationItem.leftBarButtonItem = leftButton
        
        view = mainView
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        tabBarController?.tabBar.isHidden = false
    }
    
    @objc func leftButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
}
