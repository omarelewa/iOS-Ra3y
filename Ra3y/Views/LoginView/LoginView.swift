//
//  LoginView.swift
//  Ra3y
//
//  Created by Omar Elewa on 17/01/2022.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var viewModel : HomeViewModel
    @State private var loginSelection:String? = nil
    
    func checkAuthentication() -> String
    {
        if (viewModel.loginUsername == viewModel.loginDummyUsername
            && viewModel.loginPassword == viewModel.loginDummyPassword)
        {
            viewModel.loginSelection = "SignIn"
            return "SignIn"
        }
        else {
            print(viewModel.loginUsername)
            print(viewModel.loginPassword)
            viewModel.loginSelection = "Forgot"
            return "Forgot"
        }
    }

    
    var body: some View {
        
        NavigationView{
                VStack {
                    Spacer()
                    
                    Group{
                        Spacer()
                        WelcomeText().environmentObject(viewModel)
                        UserImage().environmentObject(viewModel)
                    }
                    
                    Spacer()
                    
                    UserNameSubView().environmentObject(viewModel)
                    PasswordSubview().environmentObject(viewModel)
                
                    Spacer()
                    Group{
                        
                        NavigationLink(destination: UserTypeView(),
                                       tag: "SignIn",
                                       selection: $loginSelection
                        )
                        {
                            EmptyView()
                        }
                            
                        Button(
                            action:
                                {
                                    loginSelection = self.checkAuthentication()
                                },
                            label:
                                {
                                    LoginButton(title: "Sign In",
                                                backgroundColor: Color.ra3y)
                                }
                        )
                    }
                    
                    Group{
                        
                        NavigationLink(destination: ForgotPassword(),
                                       tag: "Forgot",
                                       selection: $loginSelection)
                        {
                            EmptyView()
                        }
                        
                        Button (action:{
                            loginSelection = self.checkAuthentication()
                            }, label:{
                                Text("Forgot your password?")
                            })
                    }
                }.padding()
                .navigationTitle("Log Out")
                .navigationBarHidden(true)
        }.navigationBarHidden(true)
    }
}
        

struct LoginView_Previews : PreviewProvider {
    static var previews: some View {
        LoginView().environmentObject(HomeViewModel())
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
//    @Binding var loginUsername: String
    @EnvironmentObject var viewModel : HomeViewModel
        
    var body: some View {
        TextField("Username", text: $viewModel.loginUsername)
            .padding()
            .background(Color.lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
            
    }
}

struct PasswordSubview: View {
    @EnvironmentObject var viewModel : HomeViewModel
    
    var body: some View {
        SecureField("Password", text: $viewModel.loginPassword)
            .padding()
            .background(Color.lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
            
    }
}
