//
//  AppDelegate.swift
//  UIAppearance
//
//  Created by Elias Medeiros on 07/04/2018.
//  Copyright © 2018 CWI Software. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {    
        AppearanceService.customizations()
        
        return true
    }



}

