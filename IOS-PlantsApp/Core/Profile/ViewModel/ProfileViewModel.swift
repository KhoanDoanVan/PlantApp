//
//  ProfileViewModel.swift
//  IOS-PlantsApp
//
//  Created by Đoàn Văn Khoan on 22/02/2024.
//

import Foundation
import SwiftUI
import Combine

class ProfileViewModel: ObservableObject{
    @Published var userCurrent : User?
    private var cancellable = Set<AnyCancellable>()
        
    init(){
        subscribers()
    }
    
    private func subscribers(){
        UserServices.shared.$userCurrent.sink { [weak self] user in
            self?.userCurrent = user
            print("DEBUG:: User current is \(user)")
        }
        .store(in: &cancellable)
    }
}
