//
//  SignUpTesting.swift
//  HLF-Clone-SignUpTests
//
//  Created by Perennial Macbook on 19/05/22.
//

import XCTest
@testable import HLF_Clone_iOS

class SignUpTesting: XCTestCase {
    var model : SignUpModel!

    override func setUpWithError() throws {
        
        print("setUpWithError")
        model = SignUpModel(firstName: "Bhavesh", lastName: "Patil", email: "bhavesh.patil0325@gmail.com", password: "$Perennial03", confirmPassword: "$Perennial03")
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        model = nil
        print("tearDownWithError")
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    func testValidateName(){
        
        //Given
        model.firstName = "Bhavesh"
        model.lastName = "Patil"
        
        //When
        let isFirstNameValid = model.isValidFirstName
        let isLastNameValid = model.isValidLastName
        
        //Then
        XCTAssertTrue(isFirstNameValid, "First name is not a valid one")
        XCTAssertTrue(isLastNameValid, "Last name is not a valid one")

    }
    
    func testEmailValidation(){
        //Given
        model.email = "bhavesh.patil0325@gmail.com"
        
        //When
        let isEmailValid = model.isValidEmail
        
        //Then
        XCTAssertTrue(isEmailValid, "Email is not valid")
        XCTAssertFalse(isEmailValid, "Email is valid")
        XCTAssert(isEmailValid, "Email is not valid")
    }
    
    func testPasswordValidation() throws {
        // Given
        model.password = "Perennial@123"
        model.confirmPassword = "Perennial@123"
        
        // When
        let isValidPassword = model.isValidPassword
        
        // Then
        XCTAssertTrue(isValidPassword, "Password is not a valid one")
        XCTAssertFalse(isValidPassword, "Password is a valid one")

    }
    
    func testSignUpModel_Data_Validation() throws {
        XCTAssertNil(model, "SignUpModel is not Nil")
        XCTAssertNotNil(model, "SignUpModel is Nil")
        
        if let signUpModel = model {
            XCTAssertEqual(signUpModel.firstName.count, 0, "First Name is non Empty")
            XCTAssertEqual(signUpModel.lastName.count, 0, "Last Name is non Empty")
            XCTAssertEqual(signUpModel.email.count, 0, "Email is non Empty")
            XCTAssertEqual(signUpModel.password.count, 0, "Password is non empty")
        }else {
            XCTFail("Failed to signUpModel")
        }
        
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
