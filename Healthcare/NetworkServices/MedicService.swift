//
//  MedicService.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 29.08.2024.
//

import Foundation


final class MedicService {
    
    private var task: URLSessionTask?
    
    func fetchMedics(completion: @escaping (Result<MedicData, NetworwServiceError>) -> Void) {
        
        assert(Thread.isMainThread)
        
        if task != nil {
            task?.cancel()
        }
        
        guard let request = makeRequestBody() else {
            return
        }
        
        let session = URLSession.shared.dataTask(with: request) { data, response, error in
            
            
            DispatchQueue.main.async {  
                
                if let error = error as? NSError {
                    
                    completion(.failure(.codeError("\(error)")))
                    return
                }
                
                if let response = response as? HTTPURLResponse,
                   response.statusCode < 200 || response.statusCode >= 300 {
                    
                    completion(.failure(.responseError("\(response.statusCode)")))
                    return
                }
                
                if let data {
                    
                    do {
                        let medicResult = try JSONDecoder().decode(MedicData.self, from: data)
                        
                        completion(.success(medicResult))
                    } catch let error{
                        completion(.failure(.codeError(error.localizedDescription)))
                    }
                }
            }
        }
        
        task = session
        session.resume()
    }
    
    
    func makeRequestBody() -> URLRequest? {
        
        guard let url = URL(string: "https://raw.githubusercontent.com/TimurkaevMalik/Healthcare/main/test.json") else {
            assertionFailure("Failed to create URL")
            return nil
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        return request
    }
}
