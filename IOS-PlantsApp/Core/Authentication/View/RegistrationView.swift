//
//  RegistrationView.swift
//  IOS-PlantsApp
//
//  Created by Đoàn Văn Khoan on 22/02/2024.
//

import SwiftUI

struct RegistrationView: View {
    
    @StateObject var viewModel = RegistrationViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            
            VStack{
                
                Image("theme")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .cornerRadius(50)
                    .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .padding(.top)
                    .padding(.bottom)
                                                    
                VStack(spacing : 10){
                    TextField("email", text: $viewModel.email)
                        .autocapitalization(.none)
                        .modifier(FieldTextModifier())

                    
                    SecureField("password", text: $viewModel.password)
                        .modifier(FieldTextModifier())
                    
                    TextField("fullname", text: $viewModel.fullname)
                        .autocapitalization(.none)
                        .modifier(FieldTextModifier())
                    
                    TextField("username", text: $viewModel.username)
                        .modifier(FieldTextModifier())
                                        
                    Button{
                        Task{
                            try await viewModel.createUser()
                        }
                    } label: {
                        Text("Sign up")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(.black))
                            .frame(width: 300, height: 40)
                            .background(Color(.systemGray3))
                            .cornerRadius(50)
                            .padding()
                    }
                    
                }
                
                Spacer()
                
                Divider()
                
                Button{
                    dismiss()
                } label: {
                    HStack(spacing : 5){
                        Text("You're already have an account?")
                            .font(.footnote)
                        
                        Text("Login")
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                }
                
            }
            .toolbar{
                ToolbarItem(placement : .topBarTrailing){
                    NavigationLink{
                        
                    } label: {
                        Button{
                            
                        } label: {
                            Image(systemName: "questionmark.bubble")
                                .font(.system(size: 25))
                                .padding(.horizontal, 10)
                                .foregroundColor(.black)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    RegistrationView()
}
