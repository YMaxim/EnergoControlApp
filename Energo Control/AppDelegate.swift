//
//  AppDelegate.swift
//  Energo Control
//
//  Created by Admin on 07.11.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate  {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        if let barFont = UIFont(name: "Avenir-Light", size: 18.0) {
            UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.lightGray, NSAttributedStringKey.font: barFont]
        }
        return true
    }
}
