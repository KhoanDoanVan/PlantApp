//
//  NavBarAlphabetView.swift
//  IOS-PlantsApp
//
//  Created by Đoàn Văn Khoan on 21/02/2024.
//

import SwiftUI

struct NavBarAlphabetView: View {
    let alphabet = [
        "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O",
        "P","Q","R","S","T","U","V","W","X","Y","Z"
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                ForEach(alphabet, id: \.self) { letter in
                    Text(letter)
                        .font(.system(size: 13))
                        .padding(.vertical, 0)
                }
            }
        }
        .frame(width: 15)
    }
}

#Preview {
    NavBarAlphabetView()
}
