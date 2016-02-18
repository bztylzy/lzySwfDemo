//
//  AppDelegate.swift
//  lzySwfDemo
//
//  Created by 李宗瑶 on 16/1/21.
//  Copyright © 2016年 先花. All rights reserved.
//

import UIKit


@UIApplicationMain



class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        window=UIWindow(frame:UIScreen.mainScreen().bounds)
        let firstV=FirstViewController()
        let firstNavi=UINavigationController(rootViewController: firstV)
        
        
        firstNavi.title="投资"
        firstNavi.tabBarItem.image=UIImage(named: "invest")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        firstNavi.tabBarItem.selectedImage=UIImage(named: "invest_sel")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
    
        let secondV=SecondViewController()
        let secondNavi=UINavigationController(rootViewController: secondV)
        secondNavi.tabBarItem.image=UIImage(named: "loan")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        secondNavi.tabBarItem.selectedImage=UIImage(named: "loan_sel")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        secondNavi.title="借款"
        let thirdV=ThirdViewController()
        let thirdNavi=UINavigationController(rootViewController: thirdV)
        thirdNavi.tabBarItem.image=UIImage(named: "circle")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        thirdNavi.tabBarItem.selectedImage=UIImage(named: "circle_sel")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        thirdNavi.title="信用圈"
        let fourV=FourViewController()
        let fourNavi=UINavigationController(rootViewController: fourV)
        fourNavi.tabBarItem.image=UIImage(named: "infomation")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        fourNavi.tabBarItem.selectedImage=UIImage(named: "infomation_sel")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        fourNavi.title="我的"
        let tabV=UITabBarController()
        UITabBarItem .appearance().setTitleTextAttributes([NSForegroundColorAttributeName:THEMECOLOR], forState: .Normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName:TINTCOLOR], forState: UIControlState.Selected)
        UINavigationBar.appearance().titleTextAttributes=[NSForegroundColorAttributeName:TINTCOLOR,NSFontAttributeName:UIFont.boldSystemFontOfSize(17.0)]
        let vcary=[firstNavi,secondNavi,thirdNavi,fourNavi]
        tabV.viewControllers=vcary
        window?.rootViewController=tabV
        window?.makeKeyAndVisible()
        
        // Override point for customization after application launch.
        return true
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

