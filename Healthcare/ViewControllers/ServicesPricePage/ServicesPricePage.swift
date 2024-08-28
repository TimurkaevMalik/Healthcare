//
//  ServicesPricePage.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 28.08.2024.
//

import SwiftUI

struct ServicesPricePage: View {
    
    @Binding var tabs: Tabs
    
    var body: some View {
        
        NavigationStack {
            
            VStack(alignment: .leading, spacing: 16) {
                
            }
            .padding([.leading, .trailing, .top], 16)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        print("Did tab back button")
                    } label: {
                        Image(.arrowBack)
                            .frame(width: 12, height: 20.5)
                    }
                }
                
                ToolbarItem(placement: .principal) {
                    Text("Стоимость услуг")
                        .font(.ypRegularTitle)
                }
            }
            .background(.ypLightGray)
        }
        
        Spacer(minLength: 0)
        TabBarController(selectedTab: $tabs)
    }
}

#Preview {
    ServicesPricePage(tabs: .constant(.home))
}
