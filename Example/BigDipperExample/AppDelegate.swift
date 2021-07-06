//
//  AppDelegate.swift
//  BigDipperExample
//
//  Created by Bennett Yuan on 2021/7/6.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		window = UIWindow(frame: UIScreen.main.bounds)
		window!.backgroundColor = .black
		window!.makeKeyAndVisible()
		
		return true
	}
}
