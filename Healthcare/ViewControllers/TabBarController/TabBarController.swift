//
//  TabBarController.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 23.08.2024.
//

import SwiftUI

enum Tabs: Int {
    case home = 0
    case appointment = 1
    case chat = 2
    case profile = 3
}

struct TabBarController: View {
    
    @Binding var selectedTab: Tabs
    
    var body: some View {
        
        VStack(spacing: 0){
            
            Rectangle()
                .frame(height: 0.8)
                .tint(.ypSilver)
                .opacity(0.3)
            
            HStack {
                
                TabBarItem(imageName: "House", itemText: "Главная", isActive: selectedTab == .home, selectionColor: .ypPink) {
                    selectedTab = .home
                }
                
                TabBarItem(imageName: "Calendar", itemText: "Приёмы", isActive: selectedTab == .appointment, selectionColor: .ypPink) {
                    selectedTab = .appointment
                }
                
                TabBarItem(imageName: "Chat", itemText: "Чат", isActive: selectedTab == .chat, selectionColor: .ypPink) {
                    selectedTab = .chat
                }
                
                TabBarItem(imageName: "Person", itemText: "Профиль", isActive: selectedTab == .profile, selectionColor: .ypPink) {
                    selectedTab = .profile
                }
            }
        }
        .frame(height: 83)
    }
}

#Preview {
    TabBarController(selectedTab: .constant(.home))
}
