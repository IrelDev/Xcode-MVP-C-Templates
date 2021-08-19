//  ___FILEHEADER___

import Foundation

protocol PresenterViewProtocol {
    associatedtype Presenter: PresenterProtocol
    var presenter: Presenter { get set }
    
    init(presenter: Presenter)
}
