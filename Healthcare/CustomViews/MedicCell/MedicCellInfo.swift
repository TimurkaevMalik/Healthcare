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
    let rank: Int
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
            
            if rank > 5 {
                let rank = 5
                Rank(rank: rank)
            } else if rank < 0 {
                let rank = 0
                Rank(rank: rank)
            } else {
                Rank(rank: rank)
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

struct Rank: View {
    
    let rank: Int
    
    var body: some View {
        
        HStack(spacing: 2.4) {
            
            ForEach(0..<rank, id: \.self) { _ in
                Image(.starFill)
                    .resizable()
                    .frame(width: 12, height: 12)
            }
            
            ForEach(rank..<5, id: \.self) { _ in
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
              rank: 3,
              seniority: 3,
              minimumPrice: 600)
}
