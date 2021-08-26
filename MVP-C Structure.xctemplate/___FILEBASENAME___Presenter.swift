//  ___FILEHEADER___

import UIKit

final class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName___PresenterProtocol {
    var view: PresenterView?
    
    var castedView: CastedView {
        guard let view = view else {
            fatalError("PresenterView must not be nil")
        }

        guard let castedView = view as? CastedView else {
            fatalError("Type Error. PresenterView must be \(CastedView.self)")
        }
        
        return castedView
    }
}
