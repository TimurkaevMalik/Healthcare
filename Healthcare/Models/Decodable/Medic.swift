//
//  Medic.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 29.08.2024.
//

import Foundation


struct MedicData: Decodable {
    let data: UsersData
}

struct UsersData: Decodable {
    let users: [Medic]
}

struct Medic: Decodable {
    
    let name: String
    let lastName: String
    let patronymic: String
    let avatar: String?
    let rating: Float
    let seniority: Int
    let education: [Education]
    let workExpirience: [WorkExpirience]
    let category: String
    let videoChat: Int
    let home: Int
    let hospital: Int
    
    enum CodingKeys: String, CodingKey {
        
        case name = "first_name"
        case lastName = "last_name"
        case patronymic = "patronymic"
        case avatar = "avatar"
        case rating = "ratings_rating"
        case seniority = "seniority"
        case videoChat = "video_chat_price"
        case home = "home_price"
        case hospital = "hospital_price"
        case education = "higher_education"
        case workExpirience = "work_expirience"
        case category = "category_label"
    }
}


struct Education: Decodable {
    let university: String
}

struct WorkExpirience: Decodable {
    let organization: String
}
