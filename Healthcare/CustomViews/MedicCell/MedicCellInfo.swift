//
//  MedicCellInfo.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 27.08.2024.
//

import SwiftUI

struct MedicCellInfo: View {
    
    let name: String
    let lastName: String
    let patronymic: String
    let rating: Float
    let seniority: Int
    let minimumPrice: Int
    private let profession = "Педиатр"
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 8) {
            
            Text(lastName + "\n" + name + " " + patronymic)
                .lineSpacing(1)
                .lineLimit(3)
                .multilineTextAlignment(.leading)
                .frame(height: 50)
                .font(.ypSemiBold)
                .foregroundStyle(.ypBlack)
            
            if rating > 5 {
                let rating = 5
                Rating(rating: rating)
            } else if rating < 0 {
                let rating = 0
                Rating(rating: rating)
            } else {
                Rating(rating: rating.roundedToInt())
            }
            
            
            Text("\(profession) ・ стаж \(seniority) лет")
                .foregroundStyle(.ypDarkGray)
                .font(.ypRegular)
            
            Text("От \(minimumPrice)")
                .foregroundStyle(.ypBlack)
                .font(.ypSemiBold)
        }
    }
}

struct Rating: View {
    
    let rating: Int
    
    var body: some View {
        
        HStack(spacing: 2.4) {
            
            ForEach(0..<rating, id: \.self) { _ in
                Image(.starFill)
                    .resizable()
                    .frame(width: 12, height: 12)
            }
            
            ForEach(rating..<5, id: \.self) { _ in
                Image(.starEmpty)
                    .resizable()
                    .frame(width: 12, height: 12)
            }
        }
    }
}

#Preview {
    MedicCellInfo(name: "Дарья",
              lastName: "Семенова",
              patronymic: "Сергеевна",
                  rating: 3.5,
              seniority: 3,
              minimumPrice: 600)
}
