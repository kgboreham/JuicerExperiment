//
//  JuicerService.swift
//  JuicerExperiment
//
//  Created by Ken Boreham on 5/3/19.
//  Copyright © 2019 Ken Boreham. All rights reserved.
//

import Foundation

enum JuicerServiceError: Error {
    case responseError(Error?)
    case decodeError(Error)
}

class JuicerService {
    private let juicerFeedURL = URL(string: "https://www.juicer.io/api/feeds/beachbody-3953b61e-6a9d-48a6-8458-0788720418f4")!
    
    func getFeed(callback: @escaping (Result<JuicerFeed, JuicerServiceError>) -> Void) {
        URLSession.shared.dataTask(with: juicerFeedURL) { data, response, error in
            guard let data = data else {
                callback(.failure(.responseError(error)))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let feed = try decoder.decode(JuicerFeed.self, from: data)
                callback(.success(feed))
            } catch {
                callback(.failure(.decodeError(error)))
            }
        }.resume()
    }
}
