//
//  Photo.swift
//  BeBlue
//
//  Created by Marcio Habigzang Brufatto on 04/07/19.
//  Copyright © 2019 Marcio Habigzang Brufatto. All rights reserved.
//

import Foundation

struct Photo: Decodable {
    
    var urlPhoto: String = ""
    var camera: PhotoCamera?
    
    enum CodingKeys: String, CodingKey {
        case urlPhoto = "img_src"
        case camera
    }
}
