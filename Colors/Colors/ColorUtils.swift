//
//  ColorUtils.swift
//  Colors
//
//  Created by Pradeep Burugu on 3/7/16.
//  Copyright © 2016 Pradeep Burugu. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    convenience init?(hex:String, alpha:CGFloat = 1.0) {
        let red,green,blue:CGFloat
        if hex.hasPrefix("#") {
            let start = hex.startIndex.advancedBy(1)
            let hexColor = hex.substringFromIndex(start)
            
            if hexColor.characters.count == 6 {
                let scanner = NSScanner(string: hexColor)
                var hexNumber:UInt64 = 0
                
                if scanner.scanHexLongLong(&hexNumber) {
                    red = CGFloat((hexNumber >> 16) & 0xFF0000) / 255.0
                    green = CGFloat((hexNumber >> 8) & 0xFF0000) / 255.0
                    blue = CGFloat((hexNumber >> 0) & 0xFF0000) / 255.0
                    
                    self.init(red:red, green:green, blue:blue, alpha:alpha)
                    return
                }
            }
            
        }
        print("Invalid Hexadecimal Number.")
        return nil
    }
}