//
//  UserTypeView.swift
//  Ra3y
//
//  Created by Omar Elewa on 18/01/2022.
//

import SwiftUI

struct UserTypeView: View {
    var body: some View {
        VStack{
            HStack {
                Text("Are You a pet owner?")
                Spacer()
            }
            Image("petOwner")
                .resizable(capInsets: EdgeInsets(top: 4.0, leading: 4.0, bottom: -2.0, trailing: 4.0))
                .aspectRatio(contentMode: .fit)
            Spacer()
            
            ZStack(alignment: .topTrailing) {
                        Text("Or a pet sitter?")
                        Spacer()
                    Image("petSitter")
                        .resizable(capInsets: EdgeInsets(top: 1.0, leading: 4.0, bottom: -2.0, trailing: 4.0))
                        .aspectRatio(contentMode: .fit)
                    .padding(40)
            }
        }.padding(40)
    }
}

struct UserTypeView_Previews: PreviewProvider {
    static var previews: some View {
        UserTypeView()
    }
}
