//
//  RequestView.swift
//  Ra3y
//
//  Created by Omar Elewa on 19/01/2022.
//

import SwiftUI

struct RequestView: View {
    @EnvironmentObject var viewModel : HomeViewModel
    
    var body: some View {
        VStack{
            Text("Please Provide the following details:")
            Text("Location")
            Text("Duration")
            TextField("Please provide any additional information about the pet",
                      text: $viewModel.additionalInformation)
        }
    }
}

struct RequestView_Previews: PreviewProvider {
    static var previews: some View {
        RequestView()
    }
}
