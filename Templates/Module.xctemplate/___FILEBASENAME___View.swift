//___FILEHEADER___

import UIKit
import BigDipper

protocol ___FILEBASENAMEASIDENTIFIER___Delegate: ViewTypeDelegate {}

final class ___FILEBASENAMEASIDENTIFIER___: UIViewController, ViewType {

	private var presenter: ___VARIABLE_productName___Presenter!

	func plug(presenter: ___VARIABLE_productName___Presenter) {
		self.presenter = presenter
	}

	override func viewDidLoad() {
    	super.viewDidLoad()
		presenter.viewDidLoad()
    }
}
