//
//  FieldTextModifier.swift
//  IOS-PlantsApp
//
//  Created by Đoàn Văn Khoan on 22/02/2024.
//

import Foundation
import SwiftUI

struct FieldTextModifier: ViewModifier{
    func body(content : Content) -> some View{
        content
            .autocapitalization(.none)
            .frame(width: 350, height: 25)
            .padding(15)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 15)
    }
}
