//
//  MedicPage.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 27.08.2024.
//

import SwiftUI

struct MedicPage: View {
    
    @Environment(\.dismiss) private var dismiss
    
    let medic: Medic
    
    var body: some View {
        
        let servicesPrice = ServicesPrice( videoChat: medic.videoChat, home: medic.home, hospital: medic.hospital)
        
        NavigationStack {
            
            VStack(alignment: .leading, spacing: 16) {
                
                HStack(alignment: .top, spacing: 16) {
                    
                    URLAvatar(avatarUrl: medic.avatar)
                    
                    Text(medic.lastName + "\n" + medic.name + " " + medic.patronymic)
                        .lineSpacing(1)
                        .lineLimit(3)
                        .multilineTextAlignment(.leading)
                    
                        .font(.ypSemiBold)
                        .tint(.ypBlack)
                    
                    Spacer()
                }
                .frame(height: 50)
                
                VStack(alignment: .leading, spacing: 10){
                    
                    MedicShortInfo(image: Image(.clock), text: "Опыт работы: \(medic.seniority) лет")
                    
                    MedicShortInfo(image: Image(.suitcase), text: "Врач \(medic.category.lowercased()) категории")
                    
                    if let university = medic.education.first?.university {
                    MedicShortInfo(image: Image(.hatAcademic), text: university)
                    }
                    
                    if let oraganization = medic.workExpirience.first?.organization {
                        MedicShortInfo(image: Image(.geopoint), text: oraganization)
                    }
                }
                .padding(.top, 4)
                .font(.ypRegular)
                .foregroundStyle(.ypDarkGray)
                
                servicePriceContainer(leftText: "Стоимость услуг", rightText: "от \(servicesPrice.minimumPrice) ₽")
                    .padding(.top, 10)
                
                Text("Проводит диагностику и лечение терапевтических больных. Осуществляет расшифровку и снятие ЭКГ. Дает рекомендации по диетологии. Доктор имеет опыт работы в России и зарубежом. Проводит консультации пациентов на английском языке.")
                    .font(.ypRegular)
                    .lineSpacing(10)
                    .padding(.top, 14)
                
                Spacer(minLength: 0)
                
                AppointmentButton(text: "Записаться", servicesPrice: servicesPrice)
                    .padding(.bottom, 10)
            }
            .padding([.leading, .trailing, .top], 16)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(.arrowBack)
                            .frame(width: 12, height: 20.5)
                    }
                }
                
                ToolbarItem(placement: .principal) {
                    Text("Педиатр")
                        .font(.ypRegularTitle)
                }
            }
            .background(.ypLightGray)
        }
    }
    
    struct MedicShortInfo: View {
        
        let image: Image
        let text: String
        
        var body: some View {
            
            HStack(spacing: 12) {
                
                image
                Text(text)
            }
            .frame(height: 24)
            .tint(.ypDarkGray)
        }
    }
}


struct MedicPage_Previews: PreviewProvider {
    
    static var previews: some View {
        
        let education = [Education(university: "литьии")]
        let workExpirience = [WorkExpirience(organization: "Больница 1")]
        let avatarUrl = "https://media.istockphoto.com/id/1372002650/photo/cropped-portrait-of-an-attractive-young-female-doctor-standing-with-her-arms-folded-in-the.jpg?s=1024x1024&w=is&k=20&c=HwRi4NnrK9aKEC27BkXnJJfuggGABNmqnnmXL7D9aBs="
        
        MedicPage(medic: Medic(name: "Дарья",
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
                               hospital: 300))
    }
}
