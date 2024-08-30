//
//  URLImageService.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 29.08.2024.
//

import SwiftUI


final class URLImageService {
    
    private var task: URLSessionTask?
    
    func fetchImage(url: String, completion: @escaping (Result<Data, NetworwServiceError>) -> Void) {
        
        assert(Thread.isMainThread)
        
        if task != nil {
            task?.cancel()
        }
        
        guard let request = makeBodyRequest(url: url) else {
            completion(.failure(.invalidRequest("Uknown error")))
            return
        }
        
        let session = URLSession.shared.dataTask(with: request) { data, _, _ in
            
            DispatchQueue.main.async {
                
                if let data {
                    do {
                        completion(.success(data))
                    }
                }
            }
        }
        
        task = session
        session.resume()
    }
    
    func makeBodyRequest(url: String) -> URLRequest? {
        
        guard let url = URL(string: url) else {
            assertionFailure("Failed to create URL")
            return nil
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        return request
    }
}
