//
//  ContentView.swift
//  Ra3y
//
//  Created by Omar Elewa on 17/01/2022.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewModel : HomeViewModel
    @State private var selection:String? = nil
    
    var body: some View {
        NavigationView{
            VStack {
                VStack {
                    Text(viewModel.loginDummyUsername)
                    Spacer()
                    Image("ra3yyy")
                }
                VStack{
                        Text("The Pet Sitter App")
                            .font(.subheadline)
                            .foregroundColor(Color.ra3y)
                        
                    Spacer()
                    NavigationLink(destination: LoginView(),
                                   tag: "Login",
                                   selection: $selection)
                    {
                        EmptyView()
                    }
                    NavigationLink(destination: SignUpView(),
                                   tag: "SignUp",
                                   selection: $selection)
                    {EmptyView()}
                    
                    Button {
//                            viewModel.selection = "Login"
                        selection = "Login"
//                            
                    } label:{
                        LoginButton(title: "Sign In", backgroundColor: Color.ra3y)
                    }
                    
                    Button {
                        selection = "SignUp"
//                                viewModel.selection = "SignUp"
//                                viewModel.isSignUpViewPresented = true
                    } label: {
                        LoginButton(title: "Sign Up", backgroundColor: Color(.systemCyan))
                    }
                    
                }
            }.navigationBarHidden(true)
        }//.environmentObject(viewModel)
    }
}

struct HomeView_Previews: PreviewProvider {
//    @EnvironmentObject var viewModel : HomeViewModel
    static var previews: some View {
        HomeView().environmentObject(HomeViewModel())
    }
}
