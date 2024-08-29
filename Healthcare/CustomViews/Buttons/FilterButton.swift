//
//  FilterButton.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 25.08.2024.
//

import SwiftUI


struct FilterButton: View {
    
    let title: String
    let isActive: Bool
    let height: CGFloat
    let action: ()->Void
    
    var body: some View {
        
        GeometryReader { geo in
            
            Button{
                action()
            } label: {
                
                HStack(spacing: 6) {
                    Text(title)
                        .font(.ypRegular)
                        .tint(isActive ? .ypWhite : .ypDarkGray)
                    
                    if isActive {
                        Image(.vectorDown)
                            .frame(width: 5, height: 10)
                    }
                }
                .frame(width: geo.size.width, height: 32)
                .border(.ypGray, width: 1)
                .background(isActive ? Color.ypPink : Color.ypWhite)
            }
        }
        .frame(height: height)
    }
}

#Preview {
    FilterButton(title: "По цене",
                 isActive: true,
                 height: 32,
                 action: { print("По цене") })
}
