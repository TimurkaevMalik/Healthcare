//
//  HomePageFilter.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 26.08.2024.
//

import SwiftUI

struct HomePageFilter: View {
    
    @State var filter: Filter
    
    let titles = ["По цене", "По стажу", "По рейтингу"]
    
    var body: some View {
        
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

#Preview {
    HomePageFilter(filter: .price)
}
