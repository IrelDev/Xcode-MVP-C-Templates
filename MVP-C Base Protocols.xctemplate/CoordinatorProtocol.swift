//  ___FILEHEADER___

import UIKit

protocol CoordinatorProtocol: NSObject {
    var childCoordinators: [CoordinatorProtocol]? { get set }
    var parent: CoordinatorProtocol? { get set }
    var navigationController: UIViewController? { get set }
    
    func addChildCoordinator(_ coordinator: CoordinatorProtocol)
    func removeAllChildCoordinatorsWith<T>(type: T.Type)
    func removeAllChildCoordinators()
    func childDidFinishWorking(_ coordinator: CoordinatorProtocol)
}

extension CoordinatorProtocol {
    init(navigationController: UIViewController, parent: CoordinatorProtocol? = nil) {
        self.init()
        
        self.navigationController = navigationController
        self.parent = parent
    }
    
    func addChildCoordinator(_ coordinator: CoordinatorProtocol) {
        childCoordinators?.append(coordinator)
        #if DEBUG
        print("\(coordinator) appended")
        #endif
    }
    
    func removeAllChildCoordinatorsWith<T>(type: T.Type) {
        childCoordinators = childCoordinators?.filter { $0 is T  == false }
    }
    
    func removeAllChildCoordinators() {
        childCoordinators?.removeAll()
    }
    func childDidFinishWorking(_ coordinator: CoordinatorProtocol) {
        guard childCoordinators != nil else { return }
        for (index, coordinator) in childCoordinators!.enumerated() {
            if coordinator === coordinator {
                childCoordinators!.remove(at: index)
                #if DEBUG
                print("\(coordinator) deleted")
                #endif
                break
            }
        }
    }
}
