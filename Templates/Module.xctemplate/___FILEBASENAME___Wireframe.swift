//___FILEHEADER___

import UIKit
import BigDipper

final class ___FILEBASENAMEASIDENTIFIER___: WireframeType {

	private weak var viewController: UIViewController!
	private var router: ___VARIABLE_productName___Router!

	func plug(view: ___VARIABLE_productName___View, router: ___VARIABLE_productName___Router) {
		viewController = view
		self.router = router
	}
}