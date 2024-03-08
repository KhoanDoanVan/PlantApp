//
//  LibraryCellView.swift
//  IOS-PlantsApp
//
//  Created by Đoàn Văn Khoan on 21/02/2024.
//

import SwiftUI

struct LibraryCellView: View {
    var body: some View {
        VStack{
            HStack(spacing : 10){
                Image("plant1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
                
                Text("Adobe Hot Pepper dad d aw d")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    LibraryCellView()
}
