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
    private let demoKey = "IRGjQqIr2PcBMTrxSM4ShXi7LOZyt84tYjILhlA0"
    private init() {}
    
    func getPhotos(withCameraAndDate camera:String, date: String, completionHandler: @escaping ([Photo]) -> Void ) {
        
        let url = URL(string: baseUrl + "curiosity" + "/photos?earth_date=2015-06-03&api_key=\(demoKey)")!
        
//        let url = URL(string: baseUrl + camera + "/photos?earth_date=\(date)&api_key=\(demoKey)")!
        
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
    
    func getImage(withUrl urlImg: String, completionHandler:@escaping(Data?) -> Void) {
        
        let url = URL(string: urlImg)
        
        let dataTask = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            let imageData = Data()
            DispatchQueue.main.async {
                if let data = data {
                    completionHandler(data)
                } else {
                    completionHandler(imageData)
                }
            }
        }
        dataTask.resume()
        
    }
    
//    func getImage(withUrl url:String, completionHandler: @escaping (UI) -> Void ) {
//
//        let url = URL(string: baseUrl + "curiosity" + "/photos?earth_date=2015-06-03&api_key=\(demoKey)")!
//
//        //        let url = URL(string: baseUrl + camera + "/photos?earth_date=\(date)&api_key=\(demoKey)")!
//
//        let dataTask = URLSession.shared.dataTask(with: url) { (data, response, error) in
//            let arrayPhotos = [Photo]()
//            DispatchQueue.main.async {
//                if let data = data {
//                    let decoder = JSONDecoder()
//                    do {
//                        let decodedPhotos = try decoder.decode(PhotoBase.self, from: data)
//                        completionHandler(decodedPhotos.photos as! [Photo])
//                    } catch {
//                        completionHandler(arrayPhotos)
//                    }
//                }
//            }
//        }
//        
//        dataTask.resume()
//    }
}
