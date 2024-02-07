//
//  CashFlowSettingsVC.swift
//  Payme
//
//  Created by Ахмад Аброров on 24/01/24.
//

import UIKit


class CashFlowSettingsVC: UIViewController {
    
    private let mainView = CashFlowSettingsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = mainView
        tabBarController?.tabBar.isHidden = true
        
        let leftButton = UIBarButtonItem(
            image: UIImage(systemName: "arrow.left"),
            style: .plain, target: self, action:
                #selector(leftButtonTapped)
        )
        
        leftButton.tintColor = .black
        navigationItem.leftBarButtonItem = leftButton
        
        mainView.toggleSwitch.addTarget(self, action: #selector(switchValueChanged(_:)), for: .valueChanged)
           
        let isSwitchOn = UserDefaults.standard.bool(forKey: "isSwitchOn")
        mainView.toggleSwitch.isOn = isSwitchOn
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        tabBarController?.tabBar.isHidden = false
    }
    
    @objc func leftButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func switchValueChanged(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: "isSwitchOn")
        UserDefaults.standard.synchronize()
        
            if sender.isOn {
                print("Переключатель включен")

            } else {
                print("Переключатель выключен")
          
            }
        }
}
