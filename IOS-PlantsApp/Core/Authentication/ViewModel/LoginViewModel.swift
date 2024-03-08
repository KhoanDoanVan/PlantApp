//
//  LoginViewModel.swift
//  IOS-PlantsApp
//
//  Created by Đoàn Văn Khoan on 22/02/2024.
//

import Foundation

class LoginViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(withEmail : email, password : password)
    }
}
