//
//  LoginView.swift
//  Ra3y
//
//  Created by Omar Elewa on 17/01/2022.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    var dummy_username = "Omar"
    var dummy_password = "qwertyuiop"
    
    @State private var selection: String? = nil
    
    @State var authenticationUserName: Bool = false
    @State var authenticationPassword: Bool = false
    
    @State var authenticationDidFail: Bool = false
    @State var authenticationDidSucceed: Bool = false
    
    @State var editingMode: Bool = false
    
    var body: some View {
//        NavigationView{
            VStack {
                WelcomeText()
                UserImage()
                Spacer()
            
                NavigationLink(destination: UserTypeView(), tag: "SignIn", selection: $selection){EmptyView()}
                NavigationLink(destination: SignUpView(), tag: "Forgot", selection: $selection){EmptyView()}
                
                UserNameSubView(username: $username)
                PasswordSubview(password: $password)
            
                Spacer()
                Button {
                    selection = "SignIn"
                } label:{
                    LoginButton(title: "Sign In", backgroundColor: Color.ra3y)
                    
                }

                Button("Forgot my password") {
                    selection = "Forgot"
                }
            }
            .padding()
    }
    
    func authentication(){
        if username == dummy_username{
            authenticationUserName = true
        }
        if password == dummy_password{
            authenticationPassword = true
        }
        authenticationDidSucceed = authenticationPassword && authenticationUserName
        print(authenticationDidSucceed)
    }
}

struct LoginView_Previews : PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct WelcomeText : View {
    var body: some View {
        return Text("Welcome Back!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

struct UserImage : View {
    var body: some View {
        return Image("omar")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 75)
    }
}

struct UserNameSubView: View {
    @Binding var username: String
    var dummy_username = "Omar"
    var body: some View {
        TextField("Username", text: $username)
            .padding()
            .background(Color.lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
        
    }
    
}

struct PasswordSubview: View {
    @Binding var password: String
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .background(Color.lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}
