//
//  AppDelegate.swift
//  douyuTV
//
//  Created by Eric.Wu on 16/9/28.
//  Copyright © 2016年 eric. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        window?.rootViewController = TabBarViewController()
        // 成为主窗口
        window?.makeKeyAndVisible()
        
        UITabBar.appearance().tintColor = UIColor.orange

        
        
        return true
    }

   
}

