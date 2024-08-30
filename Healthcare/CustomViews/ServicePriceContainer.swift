//
//  ServicePriceContainer.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 28.08.2024.
//

import SwiftUI

struct servicePriceContainer: View {
    
    let leftText: String
    let rightText: String
    
    var body: some View {
        
        ZStack {
            
            Rectangle().frame(height: 60).foregroundStyle(Color.ypWhite)
                .clipShape(.rect(cornerRadius: 8))
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(.ypGray, lineWidth: 1))
            
            HStack {
                
                Text(leftText)
                
                Spacer()
                
                Text(rightText)
            }
            .padding([.leading, .trailing], 16)
        }
    }
}

#Preview {
    servicePriceContainer(leftText: "Стоимость услуг", rightText: "от 600 ₽")
}
