//
//  SignUpView.swift
//  PariahMedia
//
//  Created by Jaleel Gilbert on 12/28/22.
//

import SwiftUI

struct SignUpView: View {
    @StateObject var viewModel = AuthViewModel()
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack {
            TextField("Username", text: $username)
                .padding()
                .padding(.horizontal)
            
            TextField("Email", text: $email)
                .padding()
                .padding(.horizontal)
            
            SecureField("Password", text: $password)
                .padding()
                .padding(.horizontal)
            
            Button(action: {}) {
                Text("Register")
                    .padding()
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(10)
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
