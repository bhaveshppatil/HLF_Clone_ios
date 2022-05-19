
import XCTest
@testable import HLF_Clone_iOS


class LoginValidationUnitTests: XCTestCase {

    func test_LoginValidation_With_EmptyStrings_Returns_ValidationFailure(){

        // ARRANGE
        let validation = LoginValidation()
        let request = LoginRequest(userEmail: "", userPassword: "")

        // ACT
        let result = validation.validate(request: request)

        // ASSERT
        XCTAssertFalse(result.isValid)
        XCTAssertNotNil(result.message)
        XCTAssertEqual(result.message, "email or password cannot be empty")
       
    }

    func test_LoginValidation_With_EmptyEmail_Returns_ValidationFailure(){

        // ARRANGE
        let validation = LoginValidation()
        let request = LoginRequest(userEmail: "", userPassword: "test")

        // ACT
        let result = validation.validate(request: request)

        // ASSERT
        XCTAssertFalse(result.isValid)
        XCTAssertNotNil(result.message)
        XCTAssertEqual(result.message, "email or password cannot be empty")

    }

    func test_LoginValidation_With_EmptyPassword_Returns_ValidationFailure(){

        // ARRANGE
        let validation = LoginValidation()
        let request = LoginRequest(userEmail: "test", userPassword: "")

        // ACT
        let result = validation.validate(request: request)

        // ASSERT
        XCTAssertFalse(result.isValid)
        XCTAssertNotNil(result.message)
        XCTAssertEqual(result.message, "email or password cannot be empty")

    }

    func test_LoginValidation_With_InvalidEmailId_Returns_ValidationFailure(){

        // ARRANGE
        let validation = LoginValidation()
        let request = LoginRequest(userEmail: "test", userPassword: "test")

        // ACT
        let result = validation.validate(request: request)

        // ASSERT
        XCTAssertFalse(result.isValid)
        XCTAssertNotNil(result.message)
        XCTAssertEqual(result.message, "email id is invalid")
    }

    func test_LoginValidation_With_ValidRequest_Returns_Success(){

        // ARRANGE
        let validation = LoginValidation()
        let request = LoginRequest(userEmail: "codecat15@gmail.com", userPassword: "test")

        // ACT
        let result = validation.validate(request: request)

        // ASSERT
        XCTAssertTrue(result.isValid)
        XCTAssertNil(result.message)
    }
}
