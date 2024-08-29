//
//  MedicCell.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 24.08.2024.
//

import SwiftUI

struct MedicCell: View, Identifiable {
    
    let id = UUID()
    let name: String
    let lastName: String
    let patronymic: String
    let avatar: Image
    let rank: Int
    let seniority: Int
    let minimumPrice: Int
    let category: String
    let university: String
    let organizations: String
    let servicesPrice: ServicesPrice
    
    let likeAction: () -> Void
    
    var body: some View {
        
        NavigationLink(destination:
                        MedicPage(name: name,
                                  lastName: lastName,
                                  patronymic: patronymic,
                                  avatar: avatar,
                                  category: category,
                                  university: university,
                                  organizations: organizations,
                                  rank: rank,
                                  seniority: seniority,
                                  minimumPrice: minimumPrice,
                                  servicesPrice: servicesPrice)){
            
            GeometryReader { geo in
                
                Rectangle()
                    .foregroundStyle(Color.ypWhite)
                    .clipShape(.rect(cornerRadius: 8))
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(.ypGray, lineWidth: 1.0))
                
                VStack(spacing: 15) {
                    HStack(alignment: .top, spacing: 16) {
                        
                        avatar
                            .resizable()
                            .foregroundStyle(.ypPink)
                            .frame(width: 50, height: 50)
                            .clipShape(.rect(cornerRadius: 25))
                            .padding(.leading, 16)
                        
                        MedicCellInfo(name: name,
                                  lastName: lastName,
                                  patronymic: patronymic,
                                  rank: rank,
                                  seniority: seniority,
                                  minimumPrice: minimumPrice)
                        
                        Spacer()
                        
                        Button {
                            likeAction()
                        } label: {
                            Image(.likeEmpty).frame(width: 24, height: 24)
                        }
                        .frame(width: 24, height: 24, alignment: .top)
                        .padding(.trailing, 16)
                    }
                    .padding(.top, 20)
                    
                    AppointmentButton(text: "Записаться", servicesPrice: servicesPrice)
                        .padding([.leading, .trailing], 16)
                    
                }
            }
            .frame(height: 224)
        }
    }
}



#Preview {
    MedicCell(name: "Дарья",
                 lastName: "Семенова",
                 patronymic: "Сергеевна",
                 avatar: Image(.realAvatar),
                 rank: 3,
                 seniority: 3,
                 minimumPrice: 600,
                 category: "category",
                 university: "university",
                 organizations: "organizations",
                 servicesPrice: ServicesPrice(videoChat: 600,
                                                   home: 600,
                                                   hospital: 600),
                 likeAction: {})
}
