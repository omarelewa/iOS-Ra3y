//
//  FinderView.swift
//  Ra3y
//
//  Created by Omar Elewa on 18/01/2022.
//

import SwiftUI

struct FinderView: View {
    @EnvironmentObject var viewModel : HomeViewModel
    @State private var mode:String? = nil
    
    var body: some View {

            VStack{
                Text("Select a suitable option")
                    .font(.largeTitle)
                
                Spacer()
                
                NavigationLink(destination: RequestView(),
                               tag: "Request",
                               selection: $mode
                )
                {
                    EmptyView()
                }
                NavigationLink(destination: VaccinationsView(),
                               tag: "Vaccinations",
                               selection: $mode
                )
                {
                    EmptyView()
                }
                NavigationLink(destination: ServicesView(),
                               tag: "Services",
                               selection: $mode
                )
                {
                    EmptyView()
                }
                
                
                Button(
                    action:
                    {
                        mode = "Request"
                    }, label:
                    {
                        LoginButton(title: "Request", backgroundColor: Color.ra3y)
                    }
                )
                
                Button(
                    action:
                    {
                        mode = "Vaccinations"
                    }, label:
                    {
                        LoginButton(title: "Vaccinations", backgroundColor: Color.ra3y)
                    }
                )
            
                Button(
                    action:
                    {
                        mode = "Services"
                    }, label:
                    {
                        LoginButton(title: "Services", backgroundColor: Color.ra3y)
                    }
                )
                
              
                Spacer()
            }
    }
}

struct FinderView_Previews: PreviewProvider {
    static var previews: some View {
        FinderView()
    }
}
