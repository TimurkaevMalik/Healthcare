//
//  MedicCell.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 24.08.2024.
//

import SwiftUI

struct MedicCell: View, Identifiable {
    
    let id = UUID()
    let medic: Medic
    
    let likeAction: () -> Void
    
    var body: some View {
        
        let servicesPrice = ServicesPrice( videoChat: medic.videoChat, home: medic.home, hospital: medic.hospital)
        
        NavigationLink(destination: MedicPage(medic: medic)) {
            
            GeometryReader { geo in
                
                Rectangle()
                    .foregroundStyle(Color.ypWhite)
                    .clipShape(.rect(cornerRadius: 8))
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(.ypGray, lineWidth: 1.0))
                
                VStack(spacing: 15) {
                    HStack(alignment: .top, spacing: 16) {
                        
                        URLAvatar(avatarUrl: medic.avatar)
                            .padding(.leading, 16)
                        
                        MedicCellInfo(name: medic.name,
                                      lastName: medic.lastName,
                                      patronymic: medic.patronymic,
                                      rating: medic.rating,
                                      seniority: medic.seniority,
                                      minimumPrice:
                                        servicesPrice.minPrice)
                        
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
                    
                    AppointmentButton(servicesPrice: servicesPrice)
                        .padding([.leading, .trailing], 16)
                    
                }
            }
            .frame(height: 224)
        }
    }
}



struct MedicCell_Previews: PreviewProvider {
    
    static var previews: some View {
        
        let education = [Education(university: "литьии")]
        let workExpirience = [WorkExpirience(organization: "Больница 1")]
        let avatarUrl = "https://media.istockphoto.com/id/1372002650/photo/cropped-portrait-of-an-attractive-young-female-doctor-standing-with-her-arms-folded-in-the.jpg?s=1024x1024&w=is&k=20&c=HwRi4NnrK9aKEC27BkXnJJfuggGABNmqnnmXL7D9aBs="
        
        
        MedicCell(medic: Medic(name: "Дарья",
                               lastName: "Семенова",
                               patronymic: "Сергеевна",
                               avatar: avatarUrl,
                               rating: 3,
                               seniority: 4,
                               education: education,
                               workExpirience: workExpirience,
                               category: "Высшая",
                               videoChat: 400,
                               home: 600,
                               hospital: 300),
                  likeAction: {})
    }
}
