//
//  RootView.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 23.08.2024.
//

import SwiftUI

struct RootView: View {
    
    @State var selectedTab: Tabs = .home

    var body: some View {
        
        
        
        if selectedTab == .home {
            HomePage()
        } else if selectedTab == .appointment {
            Text("Приемы")
        } else if selectedTab == .chat {
            Text("Календарь")
        } else if selectedTab == .profile {
            Text("Профиль")
        }
        
        Spacer()
        TabBarController(selectedTab: $selectedTab)
    }
}

#Preview {
    RootView()
}
