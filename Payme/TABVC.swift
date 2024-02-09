//
//  TABVC.swift
//  Payme
//
//  Created by Ахмад Аброров on 16/01/24.
//

import UIKit

class TABVC: UITabBarController{
    
    var vcArr = [
        HomeVC(),
        UINavigationController(rootViewController: TransferVC(presenter: TransferPresenter())),
        UINavigationController(rootViewController: PaymentVC(presenter: PaymentsPresenter())),
        UINavigationController(rootViewController: ServicesVC(presenter: ServicesPresenter())),
        UINavigationController(rootViewController: CashFlowVC(presenter: CashFlowPresenter()))
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.backgroundColor = .white
        vcArr[0].tabBarItem = UITabBarItem(title: "Главная", image: UIImage(systemName: "house"), tag: 1)
        vcArr[1].tabBarItem = UITabBarItem(title: "Перевод", image: UIImage(systemName: "arrow.left.arrow.right"), tag: 2)
        vcArr[2].tabBarItem = UITabBarItem(title: "Оплата", image: UIImage(named: "wallet"), tag: 3)
        vcArr[3].tabBarItem = UITabBarItem(title: "Сервисы", image: UIImage(named: "Squares1"), tag: 4)
        vcArr[4].tabBarItem = UITabBarItem(title: "Мониторинг", image: UIImage(named: "History"), tag: 5)
        
        
        self.viewControllers = vcArr
        tabBar.unselectedItemTintColor = .systemGray4
        tabBar.tintColor = .rgb(85, 186, 190)
    }
}
