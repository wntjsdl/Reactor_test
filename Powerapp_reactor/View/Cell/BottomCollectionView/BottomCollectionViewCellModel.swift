//
//  BottomCollectionViewCellModel.swift
//  Powerapp_reactor
//
//  Created by KJS on 2022/01/20.
//

import Foundation

struct BottomCollectionViewCellModel {
    var imageURL: String
    var pushCount: Int
    
    init(imageURL: String, pushCount: Int = 0) {
        self.imageURL = imageURL
        self.pushCount = pushCount
    }
}
