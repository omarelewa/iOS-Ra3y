//
//  LoginViewModel.swift
//  Ra3y
//
//  Created by Omar Elewa on 17/01/2022.
//

import SwiftUI

//@MainActor
class HomeViewModel: ObservableObject {
    
    // HomeView
    @Published var isLoginViewPresented = false
    @Published var isSignUpViewPresented = false
    @Published var selection: String = ""
    
    // UserTypeView
    @Published var userTypeSelection: String? = nil
    
    // SignUpView
    @Published var signupFirstName = ""
    @Published var signupLastName = ""
    @Published var signupEmail = ""
    @Published var signupPassword = ""
    @Published var signupConfirmPassword = ""
    @Published var signupPhoneNumber = ""
    
    // ForgotPassword
    @Published var verificationPhoneNumber: String = ""
    @Published var verificationSelection: String? = nil
    
    // LoginView
    @Published var loginUsername: String = "Omar"
    @Published var loginPassword: String = "123"
    @Published var loginDummyUsername = "Omar"
    @Published var loginDummyPassword = "123"
    @Published var loginSelection: String? = nil
    
    func checkAuthentication() -> String
    {
        if (self.loginUsername == self.loginDummyUsername && self.loginPassword == self.loginDummyPassword)
        {
            self.loginSelection = "SignIn"
            return "SignIn"
        }
        else {
            print(self.loginUsername)
            print(self.loginPassword)
            self.loginSelection = "Forgot"
            return "Forgot"
        }
    }
}
