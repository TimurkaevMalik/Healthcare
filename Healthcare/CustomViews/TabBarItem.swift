//
//  TabBarItem.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 23.08.2024.
//

import SwiftUI

struct TabBarItem: View {
    
    let imageName: String
    let itemText: String?
    let isActive: Bool
    let selectionColor: Color
    let action: () -> Void
    
    var body: some View {
        
        Button {
            action()
        } label: {
            
            GeometryReader { geo in
                
                VStack(alignment: .center, spacing: 5) {
                    
                    Image(imageName)
                        .renderingMode(.template)
                        .foregroundStyle(isActive == true ? selectionColor : .ypDarkGray)
                        .frame(width: 32, height: 32)
                    
                    if let itemText {
                        Text(itemText)
                            .foregroundStyle(.ypDarkGray)
                            .font(Font.tabBar)
                    }
                }
                .frame(width: geo.size.width, height: geo.size.height)
            }
        }
    }
}

#Preview {
    TabBarItem(imageName: "House", itemText: "Home", isActive: true, selectionColor: .ypPink, action: {})
}
