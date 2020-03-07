//
//  AppDelegate.swift
//  SomeCycleViewDemo
//
//  Created by Gamin on 2020/3/6.
//  Copyright © 2020 gamin.com. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds);
        window?.backgroundColor = UIColor.white;
        let home = HomeViewController();
        window?.rootViewController = UINavigationController(rootViewController: home);
        window?.makeKeyAndVisible();
        
        return true
    }

}

