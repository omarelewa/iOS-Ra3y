//
//  ContentView.swift
//  Ra3y
//
//  Created by Omar Elewa on 17/01/2022.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    @State private var selection: String? = nil
    
//    @State var isLoginViewPresented = false
//    @State var isSignUpViewPresented = false
    
    var body: some View {
        NavigationView{
            
            VStack {
                VStack {
                    Spacer()
                    Image("ra3yyy")
                }
                
                    VStack{
                        Text("The Pet Sitter App")
                            .font(.subheadline)
                        
                        Spacer()
                        NavigationLink(destination: LoginView(), tag: "Login", selection: $selection){EmptyView()}
                        NavigationLink(destination: SignUpView(), tag: "SignUp", selection: $selection){EmptyView()}
                        Button {
                            selection = "Login"
//                            viewModel.isLoginViewPresented = true
                        } label:{
                            LoginButton(title: "Sign In", backgroundColor: Color.ra3y)
                        }
                        
                        Button {
                            selection = "SignUp"
                            viewModel.isSignUpViewPresented = true
                        } label: {
                            LoginButton(title: "Sign Up", backgroundColor: Color(.systemCyan))
                        }
                    }.navigationTitle("Back")
                    .navigationBarHidden(true)
                }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
