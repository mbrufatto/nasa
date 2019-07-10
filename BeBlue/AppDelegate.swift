//
//  AppDelegate.swift
//  BeBlue
//
//  Created by Marcio Habigzang Brufatto on 04/07/19.
//  Copyright © 2019 Marcio Habigzang Brufatto. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow()
        let photoVC = PhotoViewController()
        photoVC.view.backgroundColor = UIColor.white
        let navController = UINavigationController(rootViewController: photoVC)
        navController.navigationBar.isTranslucent = false
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        
        
        return true
    }
}

