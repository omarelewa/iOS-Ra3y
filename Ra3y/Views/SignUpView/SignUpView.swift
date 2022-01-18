//
//  SignUpView.swift
//  Ra3y
//
//  Created by Omar Elewa on 18/01/2022.
//

import SwiftUI

struct SignUpView: View {
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var password = ""
    @State var confirm_password = ""
    @State var telephone = ""
    
    @State private var showingImagePicker = false
    @State private var image:Image?
    
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                        .fill(.secondary)

                Text("Tap to select a picture")
                        .foregroundColor(.white)
                        .font(.headline)

                image?
                        .resizable()
                        .scaledToFit()
                    }
                    .onTapGesture {
                        // select an image
            }
            Spacer()
            HStack {
                TextField("First Name", text: $firstName)
                    .padding()
                    .background(Color.lightGreyColor)
                    .cornerRadius(5.0)
                
                TextField("Last Name", text: $lastName)
                    .padding()
                    .background(Color.lightGreyColor)
                    .cornerRadius(5.0)
            }
            
            TextField("Email", text: $email)
                .padding()
                .background(Color.lightGreyColor)
                .cornerRadius(5.0)
            
            TextField("Phone Number", text: $telephone)
                .padding()
                .background(Color.lightGreyColor)
                .cornerRadius(5.0)
            
            TextField("Password", text: $password)
                .padding()
                .background(Color.lightGreyColor)
                .cornerRadius(5.0)
            
            TextField("Confirm Password", text: $confirm_password)
                .padding()
                .background(Color.lightGreyColor)
                .cornerRadius(5.0)
            
            Button {
            } label:{
                LoginButton(title: "Sign Up", backgroundColor: Color.ra3y)
                
            }
        }.padding()
    }
}

struct SignUpView_Previews : PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
