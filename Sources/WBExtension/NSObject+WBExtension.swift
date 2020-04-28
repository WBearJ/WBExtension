//
//  NSObject+Extension.swift
//  Splendid
//
//  Created by WBear on 2019/11/25.
//  Copyright © 2019 WBear. All rights reserved.
//
import UIKit
import Foundation

public protocol IdentifierProtocol {
    static var wb_identifier: String { get }
}

extension IdentifierProtocol where Self: UIViewController {
    public static var wb_identifier: String {
        return String(describing: Self.self)
    }
}

extension IdentifierProtocol where Self: UIView {
    public static var wb_identifier: String {
        return String(describing: Self.self)
    }
}

extension UIViewController: IdentifierProtocol {}
extension UIView: IdentifierProtocol {}
