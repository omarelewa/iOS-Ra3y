//
//  Ra3yApp.swift
//  Ra3y
//
//  Created by Omar Elewa on 17/01/2022.
//

import SwiftUI

@main
struct Ra3yApp: App {
    @StateObject var viewModel = HomeViewModel()
//    @StateObject var locationManager = LocationManager()
    var body: some Scene {
        WindowGroup {
            HomeView().environmentObject(viewModel)
        }
    }
}
