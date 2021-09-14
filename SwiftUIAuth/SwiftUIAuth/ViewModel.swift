//
//  ViewModel.swift
//  SwiftUIAuth
//
//  Created by IBE on 14/09/2021.
//
import SwiftUI
import Foundation
import FirebaseAuth


class AppViewModel: ObservableObject {
    let auth = Auth.auth()
    
    @Published var signedIn = false
    var isSignedIn: Bool {
        return auth.currentUser != nil
    }
    
    func signIn(email: String, password: String) {
        auth.signIn(withEmail: email, password: password) { [weak self] (result, error) in
            guard result != nil, error == nil else {
                return
            }
            // success
            DispatchQueue.main.async {
                self?.signedIn = true
            }
        }
    }
    
    func signUp(email: String, password: String) {
        auth.createUser(withEmail: email, password: password) { [weak self] (result, error) in
            guard result != nil, error == nil else {
                return
            }
            // success
            DispatchQueue.main.async {
                self?.signedIn = true
            }
        }
    }
}
