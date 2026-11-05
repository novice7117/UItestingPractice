//
//  LoginView.swift
//  UItestingPractice
//
//  Created by subhash on 04/11/26.
//

import SwiftUI

struct LoginView: View {

    @State private var username = ""
    @State private var password = ""

    var body: some View {
        VStack(spacing: 20) {

            // Title
            Text("Welcome Back")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Login to your account")
                .foregroundColor(.gray)

            
            // Username
            TextField("Username", text: $username)
                .textFieldStyle(.roundedBorder)
                .autocorrectionDisabled()
                .accessibilityIdentifier("usernameTextField")

            // Password
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .accessibilityIdentifier("passwordTextField")

            // Login Button
            Button {
                login()
            } label: {
                Text("Login")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .accessibilityIdentifier("loginButton")
            .disabled(username.isEmpty || password.isEmpty)

        }
        .padding(25)
    }

    private func login() {
        print("Username: \(username)")
        print("Password entered")
    }
}

#Preview {
    LoginView()
}

