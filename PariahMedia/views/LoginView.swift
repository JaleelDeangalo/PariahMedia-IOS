//
//  LoginView.swift
//  PariahMedia
//
//  Created by Jaleel Gilbert on 12/28/22.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = AuthViewModel()
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack {
            
            TextField("email", text: $email)
                .padding()
                .padding(.horizontal)
            
            SecureField("Password", text: $password)
                .padding()
                .padding(.horizontal)
                
            Button(action: {
                Task {
                    // await viewModel.login(email: email, password: password)
                }
            }) {
                Text("Login")
                    .padding()
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(10)
                    
            }
                
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
