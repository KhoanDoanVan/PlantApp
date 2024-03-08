//
//  RegistrationViewModel.swift
//  IOS-PlantsApp
//
//  Created by Đoàn Văn Khoan on 22/02/2024.
//

import Foundation

class RegistrationViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var username = ""
    @Published var fullname = ""
    
    @MainActor
    func createUser() async throws {
        try await AuthService.shared.createUser(
            withEmail : email,
            password : password,
            username: username,
            fullname: fullname
        )
    }
}
