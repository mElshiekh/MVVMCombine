//
//  UIViewController+Extensions.swift
//  MVVMCombine
//
//  Created by Mohamed ElSheikh on 20/03/2023.
//

import UIKit

extension UIViewController {
    public static func loadFromNib() -> Self {
        func instantiateFromNib<T: UIViewController>() -> T {
            return T(nibName: String(describing: T.self), bundle: nil)
        }
        return instantiateFromNib()
    }
}
