//___FILEHEADER___

import UIKit
import BigDipper

final class ___FILEBASENAMEASIDENTIFIER___: PresenterType {

	private weak var view: ___VARIABLE_productName___View!
	private var wireframe: ___VARIABLE_productName___Wireframe!
	private var interactor: ___VARIABLE_productName___Interactor!

	func plug(view: ___VARIABLE_productName___View, wireframe: ___VARIABLE_productName___Wireframe, interactor: ___VARIABLE_productName___Interactor) {
		self.view = view
		self.wireframe = wireframe
		self.interactor = interactor
	}

	func viewDidLoad() {}
}

extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName___ViewDelegate {}

extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName___InteractorDelegate {}
