//  ___FILEHEADER___

import Foundation

protocol PresenterViewProtocol: NSObject {
    associatedtype Presenter = PresenterProtocol
    associatedtype Coordinator = CoordinatorProtocol

    var presenter: Presenter { get set }
    var coordinator: Coordinator? { get set }

    init(presenter: Presenter)
}
extension PresenterViewProtocol {
    func setCoordinator(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
}
