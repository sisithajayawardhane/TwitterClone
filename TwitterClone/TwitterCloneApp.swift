//
//  TwitterCloneApp.swift
//  TwitterClone
//
//  Created by mac on 2022-05-15.
//

import SwiftUI
import Firebase

@main
struct TwitterCloneApp: App {
    @StateObject var viewModel =  AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
       WindowGroup {
            NavigationView {
                ContentView()
                
            }
            .environmentObject(viewModel)
        }
    }
}
