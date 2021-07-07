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

public protocol RouterType: AnyObject {

	func push(_ viewController: UIViewController, from source: UIViewController, animated: Bool)
	func pop(_ viewController: UIViewController, animated: Bool)
	func present(_ viewController: UIViewController, from source: UIViewController, animated: Bool, completion: (() -> Void)?)
	func dismiss(_ viewController: UIViewController, animated: Bool, completion: (() -> Void)?)
}

public extension RouterType {

	func push(_ viewController: UIViewController, from source: UIViewController, animated: Bool = true) {
		guard let sourceNavigationController = source.navigationController else {
			fatalError("Router (\(self)) can't push view controller (\(viewController)), because of source view controller (\(source)) doesn't have navigation controller.")
		}

		sourceNavigationController.pushViewController(viewController, animated: animated)
	}

	func pop(_ viewController: UIViewController, animated: Bool = true) {
		guard let navigationController = viewController.navigationController else {
			fatalError("Router (\(self)) can't pop view controller (\(viewController)), because of it doesn't have navigation controller.")
		}

		navigationController.popViewController(animated: animated)
	}

	func present(_ viewController: UIViewController, from source: UIViewController, animated: Bool = true, completion: (() -> Void)? = nil) {
		source.present(viewController, animated: animated, completion: completion)
	}

	func dismiss(_ viewController: UIViewController, animated: Bool = true, completion: (() -> Void)? = nil) {
		viewController.dismiss(animated: animated, completion: completion)
	}
}
