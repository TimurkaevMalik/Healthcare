//
//  MedicsGrid.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 28.08.2024.
//

import SwiftUI

struct MedicsGrid: View {
    
    @StateObject var viewModel = MedicsGridViewModel(medicService: MedicService())
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: [GridItem()]) {
                
                ForEach(viewModel.medics, id: \.id) { medic in
                    
                    MedicCell(medic: medic, likeAction: {})
                        .padding([.top, .bottom], 8)
                        .padding([.leading, .trailing], 16)
                }
            }
        }
    }
}


#Preview {
    MedicsGrid()
}
