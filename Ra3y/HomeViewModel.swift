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
    @Published var isLoginViewPresented:Bool = false
    @Published var isSignUpViewPresented:Bool = false
    @Published var selection: String = ""
    
    // UserTypeView
    @Published var userTypeSelection: String = "owner"
    
    // SignUpView
    @Published var signupFirstName:String = ""
    @Published var signupLastName:String = ""
    @Published var signupEmail:String = ""
    @Published var signupPassword:String = ""
    @Published var signupConfirmPassword:String = ""
    @Published var signupPhoneNumber:String = ""
    
    // ForgotPassword
    @Published var verificationPhoneNumber: String = ""
    @Published var verificationSelection: String? = nil
    
    // LoginView
    @Published var loginUsername: String = "Omar"
    @Published var loginPassword: String = "123"
    @Published var loginDummyUsername:String = "Omar"
    @Published var loginDummyPassword:String = "123"
    @Published var loginSelection: String? = nil
    func checkAuthentication() -> String
    {
        switch userTypeSelection {
        case "owner":
            if (self.loginUsername == self.loginDummyUsername && self.loginPassword == self.loginDummyPassword)
            {
                self.loginSelection = "SignInOwner"
                return "SignInOwner"
            }
            else {
                print(self.loginUsername)
                print(self.loginPassword)
                self.loginSelection = "ForgotOwner"
                return "ForgotOwner"
            }
        case "sitter":
            if (self.loginUsername == self.loginDummyUsername && self.loginPassword == self.loginDummyPassword)
            {
                self.loginSelection = "SignInSitter"
                return "SignInSitter"
            }
            else {
                print(self.loginUsername)
                print(self.loginPassword)
                self.loginSelection = "ForgotSitter"
                return "ForgotSitter"
            }
        default:
            print(userTypeSelection)
            return ""
        }
    }
    
    // RequestView
    @Published var additionalInformation:String = ""
    
    // VaccinationsView
    
    // ServicesView
}
