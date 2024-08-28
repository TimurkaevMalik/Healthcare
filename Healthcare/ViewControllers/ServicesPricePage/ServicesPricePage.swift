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
    
    let servicesPrices: ServicesPriceModel
    
    var body: some View {
        
        NavigationStack {
            
            VStack(alignment: .leading, spacing: 12) {
                
                Text("Видеоконсультация")
                    .padding(.top, 4)
                servicePriceContainer(leftText: "30 мин", rightText: "\(servicesPrices.videoChat)")
                
                Text("Чат с врачом")
                    .padding(.top, 12)
                servicePriceContainer(leftText: "30 мин", rightText: "\(servicesPrices.home)")
                
                Text("Приём в клинике")
                    .padding(.top, 12)
                servicePriceContainer(leftText: "В клинике", rightText: "\(servicesPrices.hospital)")
                
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
    ServicesPricePage(servicesPrices: ServicesPriceModel(videoChat: 600, home: 600, hospital: 600))
}
