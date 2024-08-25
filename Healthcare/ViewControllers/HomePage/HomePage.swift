//
//  HomePage.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 23.08.2024.
//

import SwiftUI

enum Filter: String {
    case price = "По цене"
    case seniority = "По стажу"
    case rank = "По рейтингу"
}

struct HomePage: View {
    
    @Binding var filter: Filter
    
    let titles = ["По цене", "По стажу", "По рейтингу"]
    
    var body: some View {
        
        VStack {
            
            Text("Приемы")
                .font(.ypRegularTitle)
            
            HStack (spacing: 0) {
                
                FilterButton(
                    title: titles[0],
                    isActive: filter == .price,
                    height: 32) {
                        filter = .price
                    }
                
                FilterButton(
                    title: titles[1],
                    isActive: filter == .seniority,
                    height: 32) {
                        filter = .seniority
                    }
                
                FilterButton(
                    title: titles[2],
                    isActive: filter == .rank,
                    height: 32) {
                        filter = .rank
                    }
            }
            .clipShape(.rect(cornerRadius: 8))
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(.ypGray, lineWidth: 1))
            .padding([.leading, .trailing], 16)
            
        }
    }
}

#Preview {
    HomePage(filter: .constant(.price))
}


