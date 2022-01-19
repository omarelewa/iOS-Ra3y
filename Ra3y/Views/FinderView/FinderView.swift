//
//  FinderView.swift
//  Ra3y
//
//  Created by Omar Elewa on 18/01/2022.
//

import SwiftUI

struct FinderView: View {
    
//    @StateObject var viewModel = HomeViewModel()
    @EnvironmentObject var viewModel : HomeViewModel
//    init() {
//        print(viewModel.userTypeSelection ?? "No transaction")
//    }
    
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            VStack{
                Text("Select a suitable option")
                    .font(.largeTitle)
//                    .frame(alignment: .topLeading)
                
                Spacer()
                
                NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                    Button{
                        
                    } label: {
                        LoginButton(title: "Request", backgroundColor: Color.ra3y)
                    }
                }
                NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                    Button{
                        
                    } label: {
                        LoginButton(title: "Vaccinations", backgroundColor: Color.ra3y)
                    }
                }
                NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                    Button{
                        
                    } label: {
                        LoginButton(title: "Services", backgroundColor: Color.ra3y)
                    }
                }
                
                Spacer()
            }.padding(30).tabItem { Text("Options") }.tag(1)
            
            Text("Tab Content 2").tabItem { Text("Settings") }.tag(2)
        }
        
    }
}

struct FinderView_Previews: PreviewProvider {
    static var previews: some View {
        FinderView()
    }
}
