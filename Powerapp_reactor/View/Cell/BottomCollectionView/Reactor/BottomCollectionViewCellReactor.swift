//
//  BottomCollectionViewCellReactor.swift
//  Powerapp_reactor
//
//  Created by KJS on 2022/01/20.
//

import Foundation
import ReactorKit

class BottomCollectionViewCellReactor: Reactor {
    typealias Action = NoAction
    
    let initialState: BottomCollectionViewCellModel
    
    init(state: BottomCollectionViewCellModel) {
        self.initialState = state
    }
}
