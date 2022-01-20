//
//  Section.swift
//  Powerapp_reactor
//
//  Created by KJS on 2022/01/20.
//

import RxDataSources

enum BottomCollectionViewCellSection {
    case base([BottomCollectionViewCellSectionItem])
    case push([BottomCollectionViewCellSectionItem])
}

enum BottomCollectionViewCellSectionItem {
    case defaultCell(DefaultCellReactor)
    case pushCell(PushCellReactor)
}

extension BottomCollectionViewCellSection: SectionModelType {
    
    typealias Item = BottomCollectionViewCellSectionItem
    
    var items: [Item] {
        switch self {
        case .base(let items):
            return items
        case .push(let items):
            return items
        }
    }
    
    init(original: BottomCollectionViewCellSection, items: [BottomCollectionViewCellSectionItem]) {
        switch original {
        case .base:
            self = .base(items)
        case .push:
            self = .push(items)
        }
    }
}
