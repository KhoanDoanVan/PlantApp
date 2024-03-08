//
//  ContentView.swift
//  IOS-PlantsApp
//
//  Created by Đoàn Văn Khoan on 21/02/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        Group{
            if viewModel.userSession != nil {
                PlantsTabView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
