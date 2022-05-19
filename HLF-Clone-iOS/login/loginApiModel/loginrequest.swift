//
//  loginrequest.swift
//  HLF-Clone-iOS
//
//  Created by Perennial Systems on 19/05/22.
//

import Foundation
struct LoginRequest: Encodable {
    let userEmail, userPassword: String
}
