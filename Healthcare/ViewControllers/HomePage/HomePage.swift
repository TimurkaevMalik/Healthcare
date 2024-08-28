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
        
        NavigationView {
            
            VStack(spacing: 16) {
                
                SearchBar(text: $searchText, placeholder: "Поиск")
                    .frame(height: 36)
                    .padding(.top, 15)
                
                HomePageFilter(filter: filter)
                
                
                
                    
                    MedTableCell(name: "osdf",
                                 lastName: "adsffa",
                                 patronymic: "asdff",
                                 avatar: Image(systemName: "person"),
                                 rank: 3,
                                 seniority: 5,
                                 minimumPrice: 400,
                                 likeAction: {},
                                 appointmentAction: {},
                                 cellTapAction: {})
                    
                Spacer()
                
            }.background(.ypLightGray)
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
                        Text("Педиатры")
                            .font(.ypRegularTitle)
                    }
                }
        }
    }
}

#Preview {
    HomePage(filter: .constant(.price))
}
