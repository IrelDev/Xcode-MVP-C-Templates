//  ___FILEHEADER___

import UIKit

protocol PresenterProtocol: AnyObject {
    typealias PresenterView = UIViewController

    var view: PresenterView? { get set }
}
extension PresenterProtocol {
    func setPresenterView(view: PresenterView) {
        self.view = view
    }
}
