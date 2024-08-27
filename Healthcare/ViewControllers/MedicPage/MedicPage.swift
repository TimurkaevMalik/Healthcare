//
//  MedicPage.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 27.08.2024.
//

import SwiftUI

struct MedicPage: View {
    
    let name: String
    let lastName: String
    let patronymic: String
    let avatar: Image
    let rank: Int
    let seniority: Int
    let minimumPrice: Int
    
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
                
                VStack(spacing: 10){
                    
                    MedicShortInfo(image: avatar, text: lastName)
                    MedicShortInfo(image: avatar, text: lastName)
                    MedicShortInfo(image: avatar, text: lastName)
                    MedicShortInfo(image: avatar, text: lastName)
                }
                .padding(.top, 4)
                
                Spacer()
            }
            .padding([.leading, .top], 16)
            .background(.ypLightGray)
                .scrollContentBackground(.hidden)
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
        }
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
    MedicPage(name: "Дарья",
              lastName: "Семенова",
              patronymic: "Сергеевна",
              avatar: Image(systemName: "person.crop.circle"),
              rank: 3,
              seniority: 3,
              minimumPrice: 600)
}
