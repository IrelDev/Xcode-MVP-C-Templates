//  ___FILEHEADER___

import UIKit

// View creation example:
//  let presenter = ___VARIABLE_productName___Presenter()
//  let coordinator = ___VARIABLE_productName___Coordinator(navigationController: navigationController!, parent: self)
//  presenter.setCoordinator(coordinator: coordinator)
//
//  let viewController = ___VARIABLE_productName___ViewController(presenter: presenter)
//  presenter.setPresenterView(view: viewController)

final class ___FILEBASENAMEASIDENTIFIER___: UIViewController, PresenterViewProtocol {
    typealias Presenter = ___VARIABLE_productName___Presenter
    var presenter: Presenter
    
    var contentView = ___VARIABLE_productName___View()
    
    required init(presenter: Presenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = contentView
    }
}
