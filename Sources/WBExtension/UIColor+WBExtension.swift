//
//  UIColor+Extension.swift
//  WBCommonExtension
//
//  Created by WBear on 2019/11/21.
//  Copyright © 2019 WBear. All rights reserved.
//
import UIKit
import Foundation

extension UIColor {
    // MARK: ======================= 16进制颜色转换color
    public class func colorWithHex(hex: String, alpha: CGFloat = 1) -> UIColor {
        var cStr = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        // check does str has '#' or '0x' character at the first
        if cStr.hasPrefix("#") {
            cStr = String(cStr.suffix(1))
        }
        if cStr.hasPrefix("0x") {
            cStr = String(cStr.suffix(2))
        }
        
        // check str not 16string
        if cStr.count != 6 {
            return .clear
        }

        var rgbValue: UInt64 = 0
        Scanner(string: cStr).scanHexInt64(&rgbValue)
        return UIColor(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0, green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0, blue: CGFloat(rgbValue & 0x0000FF) / 255.0, alpha: alpha)
    }
}
