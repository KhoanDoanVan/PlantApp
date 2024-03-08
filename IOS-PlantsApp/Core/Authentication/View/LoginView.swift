//
//  LoginView.swift
//  IOS-PlantsApp
//
//  Created by Đoàn Văn Khoan on 22/02/2024.
//

import Foundation

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack{
            
            VStack{
                
                Image("theme")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .cornerRadius(50)
                    .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .padding(.top, 50)
                    .padding(.bottom)
                                                    
                VStack(spacing : 10){
                    TextField("email", text: $viewModel.email)
                        .autocapitalization(.none)
                        .modifier(FieldTextModifier())

                    
                    SecureField("password", text: $viewModel.password)
                        .modifier(FieldTextModifier())
                    
                    NavigationLink{
                        Text("Forgot Password View")
                    } label: {
                        Text("Forgot password?")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(.black))
                            .padding(.trailing, 12)
                            .frame(maxWidth: .infinity, alignment : .trailing)
                            .padding(.vertical, 5)
                    }
                    
                    Button{
                        Task{
                            try await viewModel.login()
                        }
                    } label: {
                        Text("Login")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(.black))
                            .frame(width: 300, height: 40)
                            .background(Color(.systemGray3))
                            .cornerRadius(50)
                    }
                    
                }
                
                Spacer()
                
                Divider()
                
                
                NavigationLink{
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing : 5){
                        Text("You're not have an account?")
                            .font(.footnote)
                        
                        Text("SignUp")
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                }
                
            }
            .toolbar{
                ToolbarItem(placement : .topBarTrailing){
                    Image(systemName: "questionmark.bubble")
                        .font(.system(size: 25))
                        .padding(.horizontal, 10)
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
