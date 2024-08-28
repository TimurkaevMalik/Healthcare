//
//  AppointmentButton.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 28.08.2024.
//

import SwiftUI

struct AppointmentButton: View {
    
    let text: String
    let servicesPrices: ServicesPriceModel
    
    var body: some View {
        
        NavigationLink(destination: ServicesPricePage(servicesPrices: servicesPrices)) {
            
            ZStack {
                
                Rectangle().frame(height: 60).foregroundStyle(Color.ypPink)
                    .clipShape(.rect(cornerRadius: 8))
                
                Text(text)
                    .foregroundStyle(.ypWhite)
            }
        }
    }
}


#Preview {
    AppointmentButton(text: "Записаться", servicesPrices:
                        ServicesPriceModel(videoChat: 600,
                                           home: 600,
                                           hospital: 600))
}
