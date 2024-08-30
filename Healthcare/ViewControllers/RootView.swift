//
//  RootView.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 23.08.2024.
//

import SwiftUI


struct RootView: View {
    
    let medicService = MedicService()
    
    @State var selectedTab: Tabs = .home
    @State var filter: Filter = .price
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            if selectedTab == .home {
                
                HomePage(filter: $filter, servicesPrice:
                            ServicesPrice(videoChat: 600,
                                               home: 600,
                                               hospital: 600))
                .padding(.bottom, -10)
                
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
            
            
            
            Spacer(minLength: 0)
            
            TabBarController(selectedTab: $selectedTab)
        }
        .background(Color.ypLightGray)
    }
}

#Preview {
    RootView()
}
