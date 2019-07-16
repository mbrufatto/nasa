//
//  RoverId.swift
//  BeBlue
//
//  Created by Marcio Habigzang Brufatto on 16/07/19.
//  Copyright © 2019 Marcio Habigzang Brufatto. All rights reserved.
//

import Foundation

enum RoverId: Int {
    case curiosity
    case opportunity
    case spirit
    
    var name: String {
        switch self {
        case .curiosity:
            return "curiosity"
        case .opportunity:
            return "opportunity"
        case .spirit:
            return "spirit"
        }
    }
}
