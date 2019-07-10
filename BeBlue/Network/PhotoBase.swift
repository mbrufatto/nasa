//
//  PhotoBase.swift
//  BeBlue
//
//  Created by Marcio Habigzang Brufatto on 04/07/19.
//  Copyright © 2019 Marcio Habigzang Brufatto. All rights reserved.
//

import Foundation

class PhotoBase: Decodable {
    var photos = Array<Any>()
    
    enum CodingKeys: String, CodingKey {
        case photos
    }
    
    public required convenience init(from decoder: Decoder) throws {
        self.init()
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        if let photosData = try container.decodeIfPresent([Photo].self, forKey: .photos) {
            photos.append(contentsOf: photosData)
        } else {
            print("deu errado")
        }
    }
}
