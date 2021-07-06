//
//  BigDipper.swift
//  BigDipper
//
//  Created by Bennett Yuan on 2021/7/6.
//

import UIKit

public protocol ModuleType: AnyObject {
	var viewController: UIViewController { get }
}

public protocol ViewType: UIViewController {}

public protocol ViewTypeDelegate: AnyObject {
	func viewDidLoad()
}

public protocol PresenterType: AnyObject {}

public protocol WireframeType: AnyObject {}

public protocol InteractorType: AnyObject {}
