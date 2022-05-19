//
//  ServiceHandler.swift
//  HLF-Clone-iOS
//
//  Created by Perennial Macbook on 19/05/22.
//

import Foundation
 
class ServiceHandler {
    static let sharedInstance = ServiceHandler()
    private init() {}
    
    var isLoading = false
    
    func signup () {
        isLoading = true
    }
}
