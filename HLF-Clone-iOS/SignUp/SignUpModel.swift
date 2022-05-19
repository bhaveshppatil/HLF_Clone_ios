//
//  SignUpModel.swift
//  HLF-Clone-iOS
//
//  Created by Perennial Macbook on 19/05/22.
//

import Foundation

struct SignUpModel {
    var firstName = ""
    var lastName = ""
    var email = ""
    var passwordd = ""
    var confirmPassword = ""
    
    init(firstName : String, lastName : String, email : String, password : String, confirmPassword : String){
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.passwordd = password
        self.confirmPassword = confirmPassword
    }
    
    var isValidFirstName : Bool {
        
        return false
    }
}
