//
//  AppointmentButton.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 28.08.2024.
//

import SwiftUI

struct AppointmentButton: View {
    
    let text: String
    let servicesPrice: ServicesPriceModel
    
    var body: some View {
        
        NavigationLink(destination: ServicesPricePage(servicesPrice: servicesPrice)) {
            
            ZStack {
                
                Rectangle().frame(height: 47).foregroundStyle(Color.ypPink)
                    .clipShape(.rect(cornerRadius: 8))
                
                Text(text)
                    .foregroundStyle(.ypWhite)
            }
        }
    }
}


#Preview {
    AppointmentButton(text: "Записаться", servicesPrice:
                        ServicesPriceModel(videoChat: 600,
                                           home: 600,
                                           hospital: 600))
}
