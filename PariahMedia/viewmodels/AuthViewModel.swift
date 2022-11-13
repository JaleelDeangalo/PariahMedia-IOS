//
//  AuthViewModel.swift
//  PariahMedia
//
//  Created by Jaleel Gilbert on 11/13/22.
//

import Foundation
import SwiftUI


final class AuthViewModel: ObservableObject {
    
    @AppStorage("Token") var token: String = ""
    @Published var error: Bool = false
    
    private let delegate: AuthNetworking
    
    init(delegate: AuthNetworking) {
        self.delegate = delegate
    }
    
    func login(email: String, password: String) async {
        do {
            let token = try await delegate.login(email: email, password: password)
            self.token = token
        } catch {
            self.error = true
        }
    }
    
    func register(username: String, email: String, password: String) async {
        do {
            try await delegate.register(username: username, email: email, password: password)
        } catch {
            self.error = true
        }
    }
    
}
