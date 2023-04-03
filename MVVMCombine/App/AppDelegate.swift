//
//  AppDelegate.swift
//  MVVMCombine
//
//  Created by Mohamed ElSheikh on 20/03/2023.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        AppCoordinator.shared.start()
        return true
    }
}

