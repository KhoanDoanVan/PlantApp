//
//  ContentViewModel.swift
//  IOS-PlantsApp
//
//  Created by Đoàn Văn Khoan on 22/02/2024.
//

import Foundation
import Firebase
import Combine

class ContentViewModel: ObservableObject{
    @Published var userSession : FirebaseAuth.User?
    private var cancellable = Set<AnyCancellable>() // if u don't use it, when you logout or login it will don't trans activity because it still retain the subscribers old
    
    init(){
        setupSubscribers()
    }
    
    private func setupSubscribers(){
        AuthService.shared.$userSession.sink{ [weak self] userSession in
            self?.userSession = userSession
        }
        .store(in: &cancellable)
    }
}

