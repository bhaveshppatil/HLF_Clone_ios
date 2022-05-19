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
    var password = ""
    var confirmPassword = ""
    
    init(firstName : String, lastName : String, email : String, password : String, confirmPassword : String){
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
        self.confirmPassword = confirmPassword
    }
    
    var isValidFirstName : Bool {
        if firstName.count < Ranges.firstNameMinLength ||
            firstName.count > Ranges.firstNameMaxLength {
            return false
        }
        return true
    }
    
    var isValidLastName: Bool {
        if lastName.count < Ranges.lastNameMinLength ||
            lastName.count > Ranges.lastNameMaxLength {
            return false
        }
        return true
    }
    var isIdenticalPassword: Bool {
        return password == confirmPassword
    }
    
    var isValidPassword: Bool {
        guard isIdenticalPassword else {return false}
        let regex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{8,}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with: password)
    }
    var isValidEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return predicate.evaluate(with: email)
    }
    
    var fullName: String? {
        return "\(firstName) \(lastName)"
    }
}
