//  ___FILEHEADER___

import UIKit

protocol PresenterProtocol: AnyObject {
    associatedtype PresenterView: UIViewController
    associatedtype Coordinator: CoordinatorProtocol

    var view: PresenterView? { get set }
    var coordinator: Coordinator? { get set }
}
extension PresenterProtocol {
    func setPresenterView(view: PresenterView) {
        self.view = view
    }
    func setCoordinator(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
}
