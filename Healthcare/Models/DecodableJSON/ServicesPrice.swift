//
//  ServicesPrice.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 29.08.2024.
//

import Foundation


struct ServicesPrice: Decodable {
    let videoChat: Int
    let home: Int
    let hospital: Int
    
    enum CodingKeys: String, CodingKey {
        case videoChat = "video_chat_price"
        case home = "home_price"
        case hospital = "hospital_price"
    }
}
