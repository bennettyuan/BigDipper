//___FILEHEADER___

import UIKit
import BigDipper

final class ___FILEBASENAMEASIDENTIFIER___: ModuleType {

	var viewController: UIViewController { view }

	private let view = ___VARIABLE_productName___View()
	private let presenter = ___VARIABLE_productName___Presenter()
	private let wireframe = ___VARIABLE_productName___Wireframe()
	private let router = ___VARIABLE_productName___Router()
	private let interactor = ___VARIABLE_productName___Interactor()

	init() {
		view.plug(presenter: presenter)
		presenter.plug(view: view, wireframe: wireframe, interactor: interactor)
		wireframe.plug(view: view, router: router)
		interactor.plug(presenter: presenter)
	}
}
