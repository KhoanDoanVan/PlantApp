//
//  HeaderProfileView.swift
//  IOS-PlantsApp
//
//  Created by Đoàn Văn Khoan on 22/02/2024.
//

import SwiftUI

struct HeaderProfileView: View {
    
    private var user : User?
    
    init(user: User? = nil) {
        self.user = user
    }
    
    var body: some View {
        HStack{
            VStack(alignment : .leading){
                Text(user?.fullname ?? "")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text(user?.username ?? "")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
            }
            
            Spacer()
            
            Image("profile")
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(50)
        }
    }
}

#Preview {
    HeaderProfileView()
}
