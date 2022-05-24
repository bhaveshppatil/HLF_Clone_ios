//
//  ViewControllerUnitTesting.swift
//  HLF-Clone-SignUpTests
//
//  Created by Perennial Macbook on 23/05/22.
//

import XCTest
@testable import HLF_Clone_iOS

class ViewControllerUnitTesting: XCTestCase {
    
    var storyboard : UIStoryboard!
    var signupVC : SignupViewController!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let signupModel = SignUpModel(firstName: "Bhavesh", lastName: "P", email: "bhavesh.patil0325@gmail.com", password: "Perennial@123", confirmPassword: "Perennial@123")
        signupVC = SignupViewController.getVC(with: SignUpVM(model: signupModel))
        signupVC.loadViewIfNeeded()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        storyboard = nil
        signupVC = nil
    }
    
    func testViewController_IBOutlets() throws {
        //Check for TextFields are connected to IBOutlets or not
        XCTAssertNotNil(signupVC.firstName, "First name TextField Not connected to IBOutlet")
        XCTAssertNotNil(signupVC.lastName, "Last name TextField not connected to IBOutlet")
        XCTAssertNotNil(signupVC.email, "Email TextField not connected to IBOutlet")
        XCTAssertNotNil(signupVC.password, "Password TextField not connected to IBOutlet")
        XCTAssertNotNil(signupVC.confirmPassword, "Confirm Password TextField not connected to IBOutlet")
        XCTAssertNotNil(signupVC.createAnAccount, "Create An Account button not connected to IBOutlet")
    }
    
    func testViewController_Placeholders() throws {
        //Matches placeholders value to given values when view controller is loaded
    
        XCTAssertEqual(signupVC.firstName.placeholder, Placeholder.firstName, "First name TextField not empty")
        XCTAssertEqual(signupVC.lastName.placeholder, Placeholder.lastName, "Last name TextField not empty")
        XCTAssertEqual(signupVC.email.placeholder, Placeholder.email, "Email TextField not empty")
        XCTAssertEqual(signupVC.password.placeholder, Placeholder.password, "Passaword TextField not empty")
        XCTAssertEqual(signupVC.confirmPassword.placeholder, Placeholder.confirmPassword, "Confirm Passwordd TextField not Empty")
        
    }
    
    func testSignupViewController_TextFields_ContentType() throws {
        
        // check content type is matches to given format
        XCTAssertEqual(signupVC.firstName.textContentType, .namePrefix, "First name type not match")
        XCTAssertEqual(signupVC.lastName.textContentType, .nameSuffix, "Last name type not match")
        XCTAssertEqual(signupVC.email.textContentType, .emailAddress, "Email address type not match")
        XCTAssertEqual(signupVC.password.textContentType, .password, "Password type not match")
        XCTAssertEqual(signupVC.confirmPassword.textContentType, .password, "Password type not match")
    }
    
    func testCreateAnAccountButton() {
        
    }
    

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.=
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
