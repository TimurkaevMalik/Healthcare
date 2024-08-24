//
//  MedsTableCell.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 24.08.2024.
//

import SwiftUI

struct MedsTableCell: View {
    
    let name: String
    let lastName: String
    let patronymic: String
    let avatar: Image
    let rank: Int
    let seniority: Int
    let minimumPrice: Int
    
    var body: some View {
        
        Button {
            print("TAP")
        } label: {
            
            GeometryReader { geo in
                
                Rectangle()
                    .tint(.ypWhite)
                    .clipShape(.rect(cornerRadius: 8))
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(.ypGray, lineWidth: 1.0))
                
                VStack(spacing: 15) {
                    HStack(alignment: .top, spacing: 16) {
                        
                        avatar
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.leading, 16)
                            .background(Color(.purple))
                        
                        MedicInfo(name: name,
                                  lastName: lastName,
                                  patronymic: patronymic,
                                  rank: rank,
                                  seniority: seniority,
                                  minimumPrice: minimumPrice)
                        
                        Spacer()
                        
                        Button {
                            print("Like")
                        } label: {
                            Image(.likeEmpty).frame(width: 24, height: 24)
                        }
                        .frame(width: 24, height: 24, alignment: .top)
                        .padding(.trailing, 16)
                        .background(Color(.orange))
                    }
                    .padding(.top, 20)
                    
                    Button(action: {
                        print("appointment")
                    }, label: {
                        Text("Записаться")
                            .frame(height: 47)
                            .padding([.leading, .trailing], 120)
                            .background(Rectangle()
                                .fill(.ypPink)
                                .clipShape(.rect(cornerRadius: 8)))
                    })
                    
                }
            }
            .padding([.leading, .trailing], 16)
            .frame(height: 224)
        }
    }
}

struct MedicInfo: View {
    
    let name: String
    let lastName: String
    let patronymic: String
    let rank: Int
    let seniority: Int
    let minimumPrice: Int
    let profession = "Педиатр"
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 8) {
            
            Text(lastName + "\n" + name + " " + patronymic)
                .lineSpacing(1)
                .lineLimit(3)
                .multilineTextAlignment(.leading)
                .frame(height: 50)
                .font(.ypSemiBold)
                .tint(.ypBlack)
                .background(Color(.green))
            
            Rank(rank: rank)
            
            Text("\(profession) ・ стаж \(seniority) лет")
                .tint(.ypDarkGray)
                .font(.ypRegular)
            
            Text("От \(minimumPrice)")
                .tint(.ypBlack)
                .font(.ypSemiBold)
        }
    }
}

struct Rank: View {
    
    let rank: Int
    
    var body: some View {
        
        HStack(spacing: 2.4) {
            ForEach(0..<rank) { _ in
                
                Image(.starFill)
                    .resizable()
                    .frame(width: 12, height: 12)
            }
            
            ForEach(rank..<5) { _ in
                Image(.starEmpty)
                    .resizable()
                    .frame(width: 12, height: 12)
            }
        }
    }
}

#Preview {
    MedsTableCell(name: "Дарья",
                  lastName: "Семенова",
                  patronymic: "Сергеевна",
                  avatar: Image(systemName: "person.crop.circle"),
                  rank: 4,
                  seniority: 3,
                  minimumPrice: 600)
}

//struct AvatarNameLike: View {
//
//    let name: String
//    let lastName: String
//    let patronymic: String
//    let avatar: Image
//    let rank: Int
//    let seniority: Int
//    let minimumPrice: Int
//    let profession = "Педиатр"
//
//    var body: some View {
//
//    }
//}
