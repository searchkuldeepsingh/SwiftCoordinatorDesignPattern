//
//  AppDelegate.swift
//  SwiftCoordinatorDP
//
//  Created by Kuldeep on 01/07/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var coordinator: AppCoordinator?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        coordinator = AppCoordinator(window: window!)
        coordinator?.start()
        
        return true
    }

}

