//
//  ContentView.swift
//  SwiftUIAuth
//
//  Created by naseem on 13/09/2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AppViewModel
    var body: some View {
        NavigationView {
//            if viewModel.signedIn {
//                Text("You are signed in")
//            }
//            else {
//                SignInView()
//            }
//        }
//        .onAppear {
//            viewModel.signedIn = viewModel.isSignedIn
            SignInView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
