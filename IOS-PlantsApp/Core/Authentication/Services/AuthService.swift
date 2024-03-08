//
//  AuthService.swift
//  IOS-PlantsApp
//
//  Created by Đoàn Văn Khoan on 22/02/2024.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

class AuthService{
    
    @Published var userSession : FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init(){
        self.userSession = Auth.auth().currentUser
    }
    
    @MainActor
    func createUser(withEmail email : String, password : String, username : String, fullname : String) async throws {
        do{
            let user = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = user.user
            try await uploadUserData(id: user.user.uid, withEmail: email, username: username, fullname: fullname)
            print("DEBUG:: Success create User:\(user)")
        } catch {
            print("DEBUG:: Create User Failed with Error \(error)")
        }
    }
    
    @MainActor
    func login(withEmail email : String, password : String) async throws{
        do{
            let user = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = user.user
            try await UserServices.shared.fetchUserCurrent()
            print("DEBUG:: Success Login with User:\(user)")
        } catch {
            print("DEBUG:: Login Failed with Error \(error)")
        }
    }
    
    @MainActor
    func logout(){
        try? Auth.auth().signOut()
        self.userSession = nil
        UserServices.shared.resetUserCurrent()
        print("DEBUG:: Success Logout !!!")
    }
    
    func uploadUserData(id : String, withEmail email : String, username : String, fullname : String) async throws {
        let user = User(id: id, email: email, username: username, fullname: fullname)
        guard let userData = try? Firestore.Encoder().encode(user) else { return }
        try await Firestore.firestore().collection("users").document(id).setData(userData)
        UserServices.shared.userCurrent = user // set cache
    }
}
