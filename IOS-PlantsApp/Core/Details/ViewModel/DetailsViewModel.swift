//
//  DetailsViewModel.swift
//  IOS-PlantsApp
//
//  Created by Đoàn Văn Khoan on 21/02/2024.
//

import Foundation

class DetailsViewModel: Observable{
    @Published var imageUrl = ""
    @Published var namePLant = ""
    
    func fetchPlants() async throws {
        
    }
}
