//
//  User.swift
//  IOS-PlantsApp
//
//  Created by Đoàn Văn Khoan on 22/02/2024.
//

import Foundation

struct User: Identifiable, Encodable, Decodable{
    let id : String
    let email : String
    let username : String
    let fullname : String
    let description : String? = nil
}
