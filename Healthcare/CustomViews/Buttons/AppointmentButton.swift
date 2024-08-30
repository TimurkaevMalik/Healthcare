//
//  AppointmentButton.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 28.08.2024.
//

import SwiftUI

struct AppointmentButton: View {
    
    let servicesPrice: ServicesPrice
    
    var body: some View {
        
        NavigationLink(destination: ServicesPricePage(servicesPrice: servicesPrice)) {
            
            ZStack {
                
                Rectangle().frame(height: 47).foregroundStyle(servicesPrice.maxPrice > 0 ? .ypPink : .ypGray)
                    .clipShape(.rect(cornerRadius: 8))
                
                Text(servicesPrice.maxPrice > 0 ? "Записаться" : "Нет свободного расписания")
                    .foregroundStyle(servicesPrice.maxPrice > 0 ? .ypWhite : .ypBlack)
            }
        }
    }
}


#Preview {
    AppointmentButton(servicesPrice:
                        ServicesPrice(videoChat: 600,
                                           home: 600,
                                           hospital: 600))
}
