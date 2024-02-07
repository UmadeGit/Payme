//
//  AppDelegate.swift
//  Payme
//
//  Created by Ахмад Аброров on 16/01/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = TABVC()
        window?.makeKeyAndVisible()
        
        
        return true
    }
}
    
