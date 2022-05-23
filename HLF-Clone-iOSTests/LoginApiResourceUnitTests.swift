//
//  LoginApiResourceUnitTests.swift
//  TestCaseDemoTests
//
//  Created by CodeCat15 on 12/28/20.
//

import XCTest
@testable import TestCaseDemo



class LoginApiResourceUnitTests: XCTestCase {

    func test_LoginApiResource_With_ValidRequest_Returns_LoginResponse(){

        // ARRANGE
        let request = LoginRequest(userEmail: "codecat15@gmail.com", userPassword: "1234")
        let resource = LoginApiResource()
        let expectation = self.expectation(description: "ValidRequest_Returns_LoginResponse")

        // ACT
        resource.authenticateUser(request: request) { (loginResponse) in

            // ASSERT
            XCTAssertNotNil(loginResponse)
            XCTAssertNil(loginResponse?.errorMessage)
            XCTAssertEqual(request.userEmail, loginResponse?.data?.email)
            XCTAssertEqual("codecat15", loginResponse?.data?.userName)
            XCTAssertEqual(15, loginResponse?.data?.userID)
            expectation.fulfill()
        }

        waitForExpectations(timeout: 5, handler: nil)

    }

    func test_LoginApiResource_With_InValidRequest_Returns_Error(){

        // ARRANGE
        let request = LoginRequest(userEmail: "Hello@world.com", userPassword: "1234")
        let resource = LoginApiResource()
        let expectation = self.expectation(description: "InValidRequest_Returns_Error")

        // ACT
        resource.authenticateUser(request: request) { (loginResponse) in

            // ASSERT
            XCTAssertNotNil(loginResponse)
            XCTAssertNotNil(loginResponse?.errorMessage)
            XCTAssertNil(loginResponse?.data)
            XCTAssertEqual("Invalid userEmail and password, please try again", loginResponse?.errorMessage)

            expectation.fulfill()
        }

        waitForExpectations(timeout: 5, handler: nil)

    }

    func test_LoginApiResource_With_EmptyString_Returns_Error(){

        // ARRANGE
        let request = LoginRequest(userEmail: "", userPassword: "")
        let resource = LoginApiResource()
        let expectation = self.expectation(description: "EmptyString_Returns_Error")

        // ACT
        resource.authenticateUser(request: request) { (loginResponse) in

            // ASSERT
            XCTAssertNotNil(loginResponse)
            XCTAssertNotNil(loginResponse?.errorMessage)
            XCTAssertNil(loginResponse?.data)
            XCTAssertEqual("Please make sure you pass a valid username and password", loginResponse?.errorMessage)

            expectation.fulfill()
        }

        waitForExpectations(timeout: 5, handler: nil)

    }

    func test_LoginApiResource_With_InvalidEmailFormat_Returns_Error(){

        // ARRANGE
        let request = LoginRequest(userEmail: "sainath)1", userPassword: "1234")
        let resource = LoginApiResource()
        let expectation = self.expectation(description: "InvalidEmailFormat_Returns_Error")

        // ACT
        resource.authenticateUser(request: request) { (loginResponse) in

            // ASSERT
            XCTAssertNotNil(loginResponse)
            XCTAssertNotNil(loginResponse?.errorMessage)
            XCTAssertNil(loginResponse?.data)
            XCTAssertEqual("Please enter a valid email id and try again", loginResponse?.errorMessage)

            expectation.fulfill()
        }

        waitForExpectations(timeout: 5, handler: nil)

    }

}
