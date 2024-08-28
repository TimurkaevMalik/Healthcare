//
//  MedTableCell.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 24.08.2024.
//

import SwiftUI

struct MedTableCell: View {
    
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
                            .tint(.ypDarkGray)
                            .frame(width: 50, height: 50)
                            .padding(.leading, 16)
                        
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
                    }
                    .padding(.top, 20)
                    
                    AppointmentButton(text: "Записаться")
                        .padding([.leading, .trailing], 16)
                    
                }
            }
            .frame(height: 224)
        }
    }
}


#Preview {
    MedTableCell(name: "Дарья",
                  lastName: "Семенова",
                  patronymic: "Сергеевна",
                  avatar: Image(systemName: "person.crop.circle"),
                  rank: 3,
                  seniority: 3,
                  minimumPrice: 600)
}
