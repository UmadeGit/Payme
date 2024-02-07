//
//  Color.swift
//  Payme
//
//  Created by Ахмад Аброров on 24/01/24.
//

import UIKit

extension UIColor {
    static func rgb (_ r:CGFloat, _ g:CGFloat, _ b:CGFloat) -> UIColor {
        UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
    static func rgbAll (_ value:CGFloat) -> UIColor {
        UIColor(red: value/255, green: value/255, blue: value/255, alpha: 1)
    }

}

extension UIColor {
    static var random: UIColor {
        return UIColor(red: .random(in: 0...1),
                       green: .random(in: 0...1),
                       blue: .random(in: 0...1),
                       alpha: 1.0)
    }
    
    static var randomDark: UIColor {
           return UIColor(red: .random(in: 0...0.7),
                          green: .random(in: 0...0.7),
                          blue: .random(in: 0...0.7),
                          alpha: 1.0)
       }
}
