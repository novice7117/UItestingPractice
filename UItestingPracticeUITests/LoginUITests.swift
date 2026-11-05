import XCTest

final class LoginUITests: XCTestCase {

    var app: XCUIApplication!

    override func setUpWithError() throws {
        continueAfterFailure = false

        app = XCUIApplication()
        app.launch()
    }

    func testLoginButtonInitiallyDisabled() {

        let loginButton = app.buttons["loginButton"]

        XCTAssertTrue(loginButton.exists)
        XCTAssertFalse(loginButton.isEnabled)
    }
    
 

    func testLoginButtonEnabledAfterEnteringCredentials() {

        let usernameField = app.textFields["usernameTextField"]
        let passwordField = app.secureTextFields["passwordTextField"]
        let loginButton = app.buttons["loginButton"]

        usernameField.tap()
        usernameField.typeText("testuser")

        passwordField.tap()
        passwordField.typeText("password123")

        XCTAssertTrue(loginButton.isEnabled)
    }

    func testLoginWithCredentials() {

        let usernameField = app.textFields["usernameTextField"]
        let passwordField = app.secureTextFields["passwordTextField"]
        let loginButton = app.buttons["loginButton"]

        usernameField.tap()
        usernameField.typeText("testuser")

        passwordField.tap()
        passwordField.typeText("password123")

        loginButton.tap()

        XCTAssertTrue(loginButton.exists)
    }
}
