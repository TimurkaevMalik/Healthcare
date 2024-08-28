//
//  MedicPage.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 27.08.2024.
//

import SwiftUI

struct MedicPage: View {
    
    @Binding var tabs: Tabs
    
    let name: String
    let lastName: String
    let patronymic: String
    let avatar: Image
    let category: String
    let university: String
    let organizations: String
    let rank: Int
    let seniority: Int
    let minimumPrice: Int
    
    let appointmentAction: () -> Void
    
    var body: some View {
        
        NavigationStack {
            
            VStack(alignment: .leading, spacing: 16) {
                
                HStack(alignment: .top, spacing: 16) {
                    
                    avatar
                        .resizable()
                        .tint(.ypDarkGray)
                        .frame(width: 50)
                    
                    Text(lastName + "\n" + name + " " + patronymic)
                        .lineSpacing(1)
                        .lineLimit(3)
                        .multilineTextAlignment(.leading)
                    
                        .font(.ypSemiBold)
                        .tint(.ypBlack)
                    
                    Spacer()
                }
                .frame(height: 50)
                
                VStack(alignment: .leading, spacing: 10){
                    
                    MedicShortInfo(image: Image(.clock), text: "Опыт работы: \(seniority) лет")
                    
                    MedicShortInfo(image: Image(.suitcase), text: "Врач \(category) категории")
                    
                    MedicShortInfo(image: Image(.hatAcademic), text: university)
                    
                    MedicShortInfo(image: Image(.geopoint), text: organizations)
                }
                .padding(.top, 4)
                .font(.ypRegular)
                .foregroundStyle(.ypDarkGray)
                
                servicePriceContainer(leftText: "Стоимость услуг", rightText: "от \(minimumPrice) ₽")
                    .padding(.top, 10)
                
                Text("Проводит диагностику и лечение терапевтических больных. Осуществляет расшифровку и снятие ЭКГ. Дает рекомендации по диетологии. Доктор имеет опыт работы в России и зарубежом. Проводит консультации пациентов на английском языке.")
                    .font(.ypRegular)
                    .lineSpacing(10)
                    .padding(.top, 14)
                
                Spacer(minLength: 0)
                
                AppointmentButton(text: "Записаться") {
                    appointmentAction()
                }
                .padding(.bottom, 10)
            }
            .padding([.leading, .trailing, .top], 16)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        print("Did tab back button")
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
        
        Spacer(minLength: 0)
        TabBarController(selectedTab: $tabs)
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

#Preview {
    MedicPage(tabs: .constant(.home),
              name: "Дарья",
              lastName: "Семенова",
              patronymic: "Сергеевна",
              avatar: Image(systemName: "person.crop.circle"),
              category: "высшая",
              university: "литьии",
              organizations: "Больница 2",
              rank: 3,
              seniority: 3,
              minimumPrice: 600,
              appointmentAction: {})
}
