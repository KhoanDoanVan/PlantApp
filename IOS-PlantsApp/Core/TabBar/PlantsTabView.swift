//
//  PlantsTabView.swift
//  IOS-PlantsApp
//
//  Created by Đoàn Văn Khoan on 21/02/2024.
//

import SwiftUI

struct PlantsTabView: View {
    
    @State private var selected = 0
    @State private var showCreate = false
    
    var body: some View {
        ZStack{
            TabView(selection : $selected) {
                
                LibraryView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }
                    .onAppear{
                        selected = 0
                    }
                    .tag(0)
                
                Text("")
                    .tabItem {
                        Image(systemName: "plus")
                    }
                    .onAppear{
                        selected = 1
                    }
                    .tag(1)
                
                TreeView()
                    .tabItem {
                        Image(systemName: "tree")
                    }
                    .onAppear{
                        selected = 2
                    }
                    .tag(2)
                
                ProfileView()
                    .tabItem {
                        Image(systemName: "person.circle")
                    }
                    .onAppear{
                        selected = 3
                    }
                    .tag(3)
            }
            .onChange(of : selected) { oldValue,newValue in
                if newValue == 1{
                    showCreate = true
                }
            }
            .sheet(isPresented: $showCreate, onDismiss: { selected = 1 }, content: {
                UploadView()
            })
            .tint(.black)

        }
    }
}

#Preview {
    PlantsTabView()
}
