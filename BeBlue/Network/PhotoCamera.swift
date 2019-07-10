//
//  PhotoCamera.swift
//  BeBlue
//
//  Created by Marcio Habigzang Brufatto on 04/07/19.
//  Copyright © 2019 Marcio Habigzang Brufatto. All rights reserved.
//

import Foundation

class PhotoCamera: Decodable {
    var cameraName: String
    
    enum CodingKeys: String, CodingKey {
        case cameraName = "name"
    }
}
