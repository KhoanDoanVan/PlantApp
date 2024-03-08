//
//  UploadView.swift
//  IOS-PlantsApp
//
//  Created by Đoàn Văn Khoan on 23/02/2024.
//

import SwiftUI

struct UploadView: View {
    var body: some View {
        VStack{
            Text("This is view Create")
        }
        .navigationTitle("Upload Plant")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement : .topBarLeading){
                Button{
                    
                } label: {
                    Text("Cancel")
                        .font(.subheadline)
                }
            }
            
            ToolbarItem(placement : .topBarTrailing){
                Button{
                    
                } label: {
                    Text("Done")
                        .font(.subheadline)
                }
            }
        }
    }
}

#Preview {
    NavigationStack{
        UploadView()
    }
}
