//
//  URLAvatarViewModel.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 29.08.2024.
//

import Foundation


class URLAvatarViewModel: ObservableObject {
    
    @Published var image: URLImageModel?
    
    private let model = URLImageService()
    
    func fetchImage(url: String) {
        
        model.fetchImage(url: url) { result in
            
            switch result {
                
            case .success(let data):
                self.image = URLImageModel(imageData: data)
            case .failure(let failure):
                print(failure)
            }
        }
    }
}
