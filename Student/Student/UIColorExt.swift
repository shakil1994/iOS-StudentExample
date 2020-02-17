//
//  UIColorExt.swift
//  Student
//
//  Created by Admin on 1/20/20.
//  Copyright © 2020 drawtech. All rights reserved.
//

import UIKit

extension UIColor {
    
    class func convertToHex(hex: String) -> UIColor {
        
        var colorStr: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if colorStr.hasPrefix("#") {
            colorStr.remove(at: colorStr.startIndex)
        }
        if colorStr.count != 6 {
            return UIColor.gray
        }
        var rgbValue: UInt64 = 0
        Scanner(string: colorStr).scanHexInt64(&rgbValue)
        return UIColor(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                       green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                       blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                       alpha: CGFloat(1.0))
        
        
        
    }
}
