//
//  LoginResponse.swift
//  HLF-Clone-iOS
//
//  Created by Perennial Systems on 19/05/22.
//

import Foundation
struct LoginResponse : Codable {

    let errorMessage: String?
    let data: LoginResponseData?
}

struct LoginResponseData : Codable
{
    let userName: String
    let userID: Int
    let email: String

    enum CodingKeys: String, CodingKey {
        case userName
        case userID = "userId"
        case email
    }
}
