//
//  ProfileView.swift
//  IOS-PlantsApp
//
//  Created by Đoàn Văn Khoan on 22/02/2024.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var showEditProfile = false
    @StateObject private var viewModel = ProfileViewModel()
    
    private var userCurrent : User? {
        return viewModel.userCurrent
    }
    
    var body: some View {
        VStack{
            VStack{
                
                HeaderProfileView(user: userCurrent)
                
                Button{
                    showEditProfile.toggle()
                } label: {
                    Text("Edit Profile")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .frame(width: 300, height: 30)
                        .foregroundColor(.black)
                        .overlay{
                            RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(.systemGray4), lineWidth: 1)
                        }
                }
                .sheet(isPresented: $showEditProfile, content: {
                    EditProfileView()
                })
                
                Button{
                    AuthService.shared.logout()
                } label: {
                    Text("Sign out")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .frame(width: 300, height: 30)
                        .foregroundColor(.black)
                        .overlay{
                            RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(.systemGray4), lineWidth: 1)
                        }
                        .padding(.top, 10)
                }
            }
            .padding()
            
            Spacer()
            
        }
    }
}

#Preview {
    ProfileView()
}
