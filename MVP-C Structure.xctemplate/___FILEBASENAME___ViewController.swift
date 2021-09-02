//  ___FILEHEADER___

import UIKit

// View creation example:
//  let presenter = ___VARIABLE_productName___Presenter()
//  let coordinator = ___VARIABLE_productName___Coordinator(navigationController: navigationController!, parent: self)
//
//  let viewController = ___VARIABLE_productName___ViewController(presenter: presenter)
//  presenter.setPresenterView(view: viewController)
//
//  viewController.setCoordinator(coordinator: coordinator)

final class ___FILEBASENAMEASIDENTIFIER___: UIViewController, PresenterViewProtocol {
    typealias Presenter = ___VARIABLE_productName___PresenterProtocol
    typealias Coordinator = ___VARIABLE_productName___CoordinatorProtocol

    var presenter: Presenter
    var coordinator: Coordinator?

    var contentView = ___VARIABLE_productName___View()
    
    required init(presenter: Presenter, coordinator: Coordinator? = nil) {
        self.presenter = presenter
        self.coordinator = coordinator

        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = contentView
    }
}
