//
//  AppointmentButton.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 28.08.2024.
//

import SwiftUI

struct AppointmentButton: View {

    let text: String
    let appointmentAction: () -> Void
    
    var body: some View {
        
        ZStack {
            
            Rectangle().frame(height: 60).foregroundStyle(Color.ypPink)
                .clipShape(.rect(cornerRadius: 8))
            
            Button{
                appointmentAction()
            } label: {
                Text(text)
                    .tint(.ypWhite)
                
            }
        }
    }
}


#Preview {
    AppointmentButton(text: "Записаться", appointmentAction: {})
}
