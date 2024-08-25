//
//  RootView.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 23.08.2024.
//

import SwiftUI

struct RootView: View {
    
    @State var selectedTab: Tabs = .home
    @State var filter: Filter = .price
    
    var body: some View {
        
        if selectedTab == .home {
            HomePage(filter: $filter)
        } else if selectedTab == .appointment {
            Text("Приемы")
                .font(.ypRegularTitle)
        } else if selectedTab == .chat {
            Text("Чат")
                .font(.ypRegularTitle)
        } else if selectedTab == .profile {
            Text("Профиль")
                .font(.ypRegularTitle)
        }
        
        Spacer()
        TabBarController(selectedTab: $selectedTab)
    }
}

#Preview {
    RootView()
}
