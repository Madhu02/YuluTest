//
//  NetworkLayer.swift
//  YuluTestApp
//
//  Created by Madhu Ailp on 26/10/19.
//  Copyright © 2019 Madhu Ailp. All rights reserved.
//

import Foundation

class NetworkLayer {
    
    class func request<T: Codable>(router: Router, completion: @escaping (Result<[String: [T]], Error>) -> ()) {
        
        var components = URLComponents()
        components.scheme = router.scheme
        components.host = router.host
        components.path = router.path
        
        guard let url = components.url else { return }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = router.method
        
        let session = URLSession(configuration: .default)
        let dataTask = session.dataTask(with: urlRequest) { data, response, error in
            guard error == nil else {
                completion(.failure(error!))
                print(error?.localizedDescription as Any)
                return
            }
            guard response != nil else {
                return
            }
            guard let data = data else {
                return
            }
            let responseObject = try! JSONDecoder().decode([String: [T]].self, from: data)
            // 7.
            DispatchQueue.main.async {
                // 8.
                completion(.success(responseObject))
            }
        }
        dataTask.resume()
    }
    
}
