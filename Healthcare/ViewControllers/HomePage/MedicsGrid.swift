//
//  MedicsGrid.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 28.08.2024.
//

import SwiftUI

struct MedicsGrid: View {
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: [GridItem()]) {
                
                ForEach(MockDataMed.medics, id: \.id) { medic in
                    
                    medic
                        .padding([.top, .bottom], 8)
                        .padding([.leading, .trailing], 16)
                }
            }
        }
    }
}


#Preview {
    MedicsGrid()
}


struct MockData {
    
    static var colors: [Color] {
        var array: [Color] = []
        for _ in 0..<30 {
            array.append(Color.random)
        }
        
        return array
    }
}

extension Color {
    
    static var random: Color {
        return Color(
            red: Double.random(in: 0...1),
            green: Double.random(in: 0...1),
            blue: Double.random(in: 0...1))
    }
}


struct MockDataMed{
    
    static let servicesPrice = ServicesPrice(
        videoChat: 600,
        home: 300,
        hospital: 400)
    
    static var medics: [MedicCell] = [
        MedicCell(name: "osdf",
                     lastName: "adsffa",
                     patronymic: "asdff",
                     avatar: Image(.realAvatar),
                     rank: 3,
                     seniority: 5,
                     minimumPrice: 400,
                     category: "category",
                     university: "university",
                     organizations: "organizations",
                     servicesPrice: servicesPrice,
                     likeAction: {}),
        
        MedicCell(name: "osdf",
                     lastName: "adsffa",
                     patronymic: "asdff",
                     avatar: Image(.realAvatar),
                     rank: 3,
                     seniority: 5,
                     minimumPrice: 400,
                     category: "category",
                     university: "university",
                     organizations: "organizations",
                     servicesPrice: servicesPrice,
                     likeAction: {}),
        
        MedicCell(name: "osdf",
                     lastName: "adsffa",
                     patronymic: "asdff",
                     avatar: Image(.realAvatar),
                     rank: 3,
                     seniority: 5,
                     minimumPrice: 400,
                     category: "category",
                     university: "university",
                     organizations: "organizations",
                     servicesPrice: servicesPrice,
                     likeAction: {}),
        
        MedicCell(name: "osdf",
                     lastName: "adsffa",
                     patronymic: "asdff",
                     avatar: Image(.realAvatar),
                     rank: 3,
                     seniority: 5,
                     minimumPrice: 400,
                     category: "category",
                     university: "university",
                     organizations: "organizations",
                     servicesPrice: servicesPrice,
                     likeAction: {}),
        
        MedicCell(name: "osdf",
                     lastName: "adsffa",
                     patronymic: "asdff",
                     avatar: Image(.realAvatar),
                     rank: 3,
                     seniority: 5,
                     minimumPrice: 400,
                     category: "category",
                     university: "university",
                     organizations: "organizations",
                     servicesPrice: servicesPrice,
                     likeAction: {}),
        
        MedicCell(name: "osdf",
                     lastName: "adsffa",
                     patronymic: "asdff",
                     avatar: Image(.realAvatar),
                     rank: 3,
                     seniority: 5,
                     minimumPrice: 400,
                     category: "category",
                     university: "university",
                     organizations: "organizations",
                     servicesPrice: servicesPrice,
                     likeAction: {}),
        
        MedicCell(name: "osdf",
                     lastName: "adsffa",
                     patronymic: "asdff",
                     avatar: Image(.realAvatar),
                     rank: 3,
                     seniority: 5,
                     minimumPrice: 400,
                     category: "category",
                     university: "university",
                     organizations: "organizations",
                     servicesPrice: servicesPrice,
                     likeAction: {}),
        
        MedicCell(name: "osdf",
                     lastName: "adsffa",
                     patronymic: "asdff",
                     avatar: Image(.realAvatar),
                     rank: 3,
                     seniority: 5,
                     minimumPrice: 400,
                     category: "category",
                     university: "university",
                     organizations: "organizations",
                     servicesPrice: servicesPrice,
                     likeAction: {}),
        
        MedicCell(name: "osdf",
                     lastName: "adsffa",
                     patronymic: "asdff",
                     avatar: Image(.realAvatar),
                     rank: 3,
                     seniority: 5,
                     minimumPrice: 400,
                     category: "category",
                     university: "university",
                     organizations: "organizations",
                     servicesPrice: servicesPrice,
                     likeAction: {}),
        
        MedicCell(name: "osdf",
                     lastName: "adsffa",
                     patronymic: "asdff",
                     avatar: Image(.realAvatar),
                     rank: 3,
                     seniority: 5,
                     minimumPrice: 400,
                     category: "category",
                     university: "university",
                     organizations: "organizations",
                     servicesPrice: servicesPrice,
                     likeAction: {}),
        
        MedicCell(name: "osdf",
                     lastName: "adsffa",
                     patronymic: "asdff",
                     avatar: Image(.realAvatar),
                     rank: 3,
                     seniority: 5,
                     minimumPrice: 400,
                     category: "category",
                     university: "university",
                     organizations: "organizations",
                     servicesPrice: servicesPrice,
                     likeAction: {}),
        
        MedicCell(name: "osdf",
                     lastName: "adsffa",
                     patronymic: "asdff",
                     avatar: Image(.realAvatar),
                     rank: 3,
                     seniority: 5,
                     minimumPrice: 400,
                     category: "category",
                     university: "university",
                     organizations: "organizations",
                     servicesPrice: servicesPrice,
                     likeAction: {}),
        
        MedicCell(name: "osdf",
                     lastName: "adsffa",
                     patronymic: "asdff",
                     avatar: Image(.realAvatar),
                     rank: 3,
                     seniority: 5,
                     minimumPrice: 400,
                     category: "category",
                     university: "university",
                     organizations: "organizations",
                     servicesPrice: servicesPrice,
                     likeAction: {}),
        
        MedicCell(name: "osdf",
                     lastName: "adsffa",
                     patronymic: "asdff",
                     avatar: Image(.realAvatar),
                     rank: 3,
                     seniority: 5,
                     minimumPrice: 400,
                     category: "category",
                     university: "university",
                     organizations: "organizations",
                     servicesPrice: servicesPrice,
                     likeAction: {})
    ]
}
