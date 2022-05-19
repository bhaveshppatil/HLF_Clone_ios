//
//  SignUpVM.swift
//  HLF-Clone-iOS
//
//  Created by Perennial Macbook on 19/05/22.
//

import Foundation
class SignUpVM {
    var signUpModel : SignUpModel!
    
    init(model : SignUpModel) {
        self.signUpModel = model
    }
    
    var isAllValidEntries : Bool {
        guard let model = signUpModel else { return false }
        return model.isValidFirstName && model.isValidLastName && model.isValidEmail && model.isValidPassword
    }
    
    deinit {
        print("$$ SignupVM - deinit")
    }
}
