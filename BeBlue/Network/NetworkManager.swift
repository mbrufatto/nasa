//
//  NetworkManager.swift
//  BeBlue
//
//  Created by Marcio Habigzang Brufatto on 04/07/19.
//  Copyright © 2019 Marcio Habigzang Brufatto. All rights reserved.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    
    private let baseUrl = "https://api.nasa.gov/mars-photos/api/v1/rovers/"
    private let demoKey = "xDhExNdyxbDHsEC17grhQSdmoxlz6YXspMc9Z7WU"
    private init() {}
    
    func getPhotos(withCameraAndDate camera:String, date: String, completionHandler: @escaping ([Photo]) -> Void ) {
        
        let url = URL(string: baseUrl + camera + "/photos?earth_date=\(date)&api_key=\(demoKey)")!
        
        let dataTask = URLSession.shared.dataTask(with: url) { (data, response, error) in
            let arrayPhotos = [Photo]()
            DispatchQueue.main.async {
                if let data = data {
                    let decoder = JSONDecoder()
                    do {
                        let decodedPhotos = try decoder.decode(PhotoBase.self, from: data)
                        completionHandler(decodedPhotos.photos as! [Photo])
                    } catch {
                        completionHandler(arrayPhotos)
                    }
                }
            }
        }
        
        dataTask.resume()
    }
}
