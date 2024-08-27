//
//  HomePage.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 23.08.2024.
//

import SwiftUI


struct HomePage: View {
    
    @Binding var filter: Filter
    @State var searchText = ""
    
    var body: some View {
            
            NavigationStack {
                
                VStack(spacing: 16) {
                    
                    SearchBar(text: $searchText, placeholder: "Поиск")
                        .frame(height: 36)
                        .padding(.top, 15)
                        
                    HomePageFilter(filter: filter)
                    
                    List(0..<7) { _ in
                        
                        MedsTableCell(name: "osdf", lastName: "adsffa", patronymic: "asdff", avatar: Image(systemName: "person"), rank: 3, seniority: 5, minimumPrice: 400).background(.ypSilver)
                    }
                    .scrollContentBackground(.hidden)
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
                                Text("Приемы")
                                    .font(.ypRegularTitle)
                            }
                    }
            }.background(.ypLightGray)
        }
    }
}

#Preview {
    HomePage(filter: .constant(.price))
}
