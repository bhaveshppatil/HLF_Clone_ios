//
//  LoginRequest.swift
//  HLF-Clone-iOS
//
//  Created by Perennial Systems on 23/05/22.
//

import Foundation
struct LoginRequest: Encodable {
    let userEmail, userPassword: String
}
