//
//  BottomCollectionViewCell.swift
//  Powerapp_reactor
//
//  Created by KJS on 2022/01/20.
//

import UIKit
import ReactorKit

class BottomCollectionViewCell: UICollectionViewCell, View {
    
    typealias Reactor = BottomCollectionViewCellReactor
    var disposeBag = DisposeBag()
    
//    let imageView = UIImageView()
    let imageUrl = UILabel()
    
    func bind(reactor: Reactor) {
        self.imageUrl.text = reactor.currentState.imageURL
    }
}
