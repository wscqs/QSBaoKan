//
//  AppDelegate.swift
//  QSBaoKan
//
//  Created by mba on 16/6/7.
//  Copyright © 2016年 mbalib. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        setupGlobalStyle()        // 配置全局样式
//        setupGlobalData()         // 配置全局数据
        setupRootViewController() // 配置控制器
        setupKeyBoardManager()    // 配置键盘管理

        return true
    }
    
    /**
     全局样式
     */
    private func setupGlobalStyle() {
        // 设置导航条和工具条的外观
        // 因为外观一旦设置全局有效, 所以应该在程序一进来就设置
        UINavigationBar.appearance().tintColor = UIColor.orangeColor()
        UITabBar.appearance().tintColor = UIColor.orangeColor()
        
        UIApplication.sharedApplication().statusBarHidden = false
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.LightContent
        QSProgressHUD.setupHUD() // 配置HUD

    }
    
    /**
     跟控制器
     */
    private func setupRootViewController() {
        window = UIWindow(frame: SCREEN_BOUNDS)
        window?.backgroundColor = UIColor.whiteColor()
        window?.rootViewController = QSMainTabBarController()
        window?.makeKeyAndVisible()
    }
    
    /**
     配置键盘管理者
     */
    private func setupKeyBoardManager() {
        IQKeyboardManager.sharedManager().enable = true
    }
    
    

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

