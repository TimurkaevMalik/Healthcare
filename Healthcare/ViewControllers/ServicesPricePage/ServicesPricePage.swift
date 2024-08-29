//
//  ServicesPricePage.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 28.08.2024.
//

import SwiftUI


struct ServicesPriceModel {
    let videoChat: Int
    let home: Int
    let hospital: Int
}

struct ServicesPricePage: View {
    
    @Environment(\.dismiss) private var dismiss
    
    let servicesPrice: ServicesPriceModel
    
    var body: some View {
        
        NavigationStack {
            
            VStack(alignment: .leading, spacing: 12) {
                
                Text("Видеоконсультация")
                    .padding(.top, 4)
                servicePriceContainer(leftText: "30 мин", rightText: "\(servicesPrice.videoChat)")
                
                Text("Чат с врачом")
                    .padding(.top, 12)
                servicePriceContainer(leftText: "30 мин", rightText: "\(servicesPrice.home)")
                
                Text("Приём в клинике")
                    .padding(.top, 12)
                servicePriceContainer(leftText: "В клинике", rightText: "\(servicesPrice.hospital)")
                
                Spacer()
                
            }
            .padding([.leading, .trailing, .top], 16)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        print("Did tab back button")
                        dismiss()
                    } label: {
                        Image(.arrowBack)
                            .frame(width: 12, height: 20.5)
                    }
                }
                
                ToolbarItem(placement: .principal) {
                    Text("Стоимость услуг")
                        .font(.ypRegularTitle)
                }
            }
            .background(.ypLightGray)
        }
    }
}

#Preview {
    ServicesPricePage(servicesPrice: ServicesPriceModel(videoChat: 600, home: 600, hospital: 600))
}
