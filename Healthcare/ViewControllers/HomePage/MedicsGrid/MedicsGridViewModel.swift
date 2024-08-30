//
//  MedicsGridViewModel.swift
//  Healthcare
//
//  Created by Malik Timurkaev on 30.08.2024.
//

import Foundation

final class MedicsGridViewModel: ObservableObject {
    
    @Published var medics: [Medic] = []
    
    private let medicService: MedicService
    
    init(medicService: MedicService) {
        self.medicService = medicService
        fetchMedicsData()
    }
    
    private func fetchMedicsData() {
        
        medicService.fetchMedics { result in
            
            switch result {
            case .success(let success):
                self.medics = success.data.users
            case .failure:
                break
            }
        }
    }
}
