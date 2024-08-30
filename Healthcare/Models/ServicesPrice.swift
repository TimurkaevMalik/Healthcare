//
//  ServicesPrice.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 29.08.2024.
//

import Foundation


struct ServicesPrice {
    
    let videoChat: Int
    let home: Int
    let hospital: Int
    
    let minPrice: Int
    let maxPrice: Int
    
    init(videoChat: Int, home: Int, hospital: Int) {
        self.videoChat = videoChat
        self.home = home
        self.hospital = hospital
        
        let prices = [videoChat, home, hospital].sorted { $0 < $1 }
        
        self.minPrice =  prices.first ?? 0
        self.maxPrice = !prices.isEmpty ? prices[prices.count - 1] : 0
        
    }
}
