//
//  ForgotPassword.swift
//  Ra3y
//
//  Created by Omar Elewa on 18/01/2022.
//

import SwiftUI



struct ForgotPassword: View {
//    @State private var phone_number: String = ""
//    @State private var selection: String? = nil
    @EnvironmentObject var viewModel : HomeViewModel

//    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        VStack{
            Text("Please enter your email address")
                .font(.title)
            TextField("Email", text: $viewModel.verificationPhoneNumber){
            }.padding()
                .background(Color.lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            NavigationLink(destination: VerificationCode(), tag: "Send", selection: $viewModel.verificationSelection){
                Button{
                    viewModel.verificationSelection = "Send"
            } label:{
                LoginButton(title: "Send Verification Code", backgroundColor: Color.ra3y)
            }}
            
        }.padding()
    }
}

struct ForgotPassword_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPassword()
    }
}
