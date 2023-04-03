//
//  WeakReferenceModel.swift
//  MVVMCombine
//
//  Created by Mohamed ElSheikh on 30/03/2023.
//

import Foundation

struct WeakReference<T: NSObject> {
    weak var value: T?
    init(value: T) {
        self.value = value
    }
}
