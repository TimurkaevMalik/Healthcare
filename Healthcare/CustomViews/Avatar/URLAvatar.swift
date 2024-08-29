//
//  URLAvatar.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 29.08.2024.
//

import SwiftUI

struct URLAvatar: View {
    
    let avatarUrl: String?
    
    @StateObject private var viewModel = URLAvatarViewModel()
    
    var body: some View {
        
        if let data = viewModel.image?.imageData, let uiImage = UIImage(data: data) {
            
            Image(uiImage: uiImage)
                .resizable()
                .foregroundStyle(.ypPink)
                .frame(width: 50, height: 50)
                .clipShape(.rect(cornerRadius: 25))
                
            
        } else {
            
            Image(systemName: "person.circle.fill")
                .resizable()
                .foregroundStyle(.ypPink)
                .frame(width: 50, height: 50)
                .clipShape(.rect(cornerRadius: 25))
                .onAppear {
                    if let avatarUrl {
                        viewModel.fetchImage(url: avatarUrl)
                    }
                }
        }
    }
}


struct URLAvatar_Preview: PreviewProvider {
    
    static var previews: some View {
        
        let avatarUrl = "https://media.istockphoto.com/id/1372002650/photo/cropped-portrait-of-an-attractive-young-female-doctor-standing-with-her-arms-folded-in-the.jpg?s=1024x1024&w=is&k=20&c=HwRi4NnrK9aKEC27BkXnJJfuggGABNmqnnmXL7D9aBs="
        
        URLAvatar(avatarUrl: avatarUrl)
    }
}
