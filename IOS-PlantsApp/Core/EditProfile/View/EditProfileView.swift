//
//  EditProfileView.swift
//  IOS-PlantsApp
//
//  Created by Đoàn Văn Khoan on 22/02/2024.
//

import SwiftUI

struct EditProfileView: View {
    
    @State private var name = ""
    @State private var nickname = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                
                VStack (alignment : .leading){
                    HStack{
                        Text("Name :")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Text("Doan Van Khoan")
                            .font(.subheadline)
                    }
                    
                    HStack{
                        Text("Nickname :")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Text("simonisdev")
                            .font(.subheadline)
                    }
                }
                
                Spacer()
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement : .topBarLeading){
                    Button{
                        dismiss()
                    } label: {
                        Text("Cancel")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                }
                
                ToolbarItem(placement : .topBarTrailing){
                    Button{
                        
                    } label: {
                        Text("Done")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                }
                
            }
        }
    }
}

#Preview {
    EditProfileView()
}
