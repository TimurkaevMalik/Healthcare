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
    let minimumPrice: Int
    
    init(videoChat: Int, home: Int, hospital: Int) {
        self.videoChat = videoChat
        self.home = home
        self.hospital = hospital
        
        let prices = [videoChat, home, hospital].sorted { $0 < $1 }
        self.minimumPrice = prices[0]
    }
}
