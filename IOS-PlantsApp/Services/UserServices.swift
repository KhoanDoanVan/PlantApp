//
//  UserServices.swift
//  IOS-PlantsApp
//
//  Created by Đoàn Văn Khoan on 22/02/2024.
//

import Foundation
import Firebase
import FirebaseFirestore

class UserServices{
    @Published var userCurrent : User?
    
    static let shared = UserServices()
    
    init(){
        Task{
            try await fetchUserCurrent()
        }
    }
    
    @MainActor
    func fetchUserCurrent() async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        let user = try snapshot.data(as : User.self)
        self.userCurrent = user
        
        print("DEBUG:: Success User Current is \(user)")
    }
    
    @MainActor
    func resetUserCurrent(){
        self.userCurrent = nil
    }
}
