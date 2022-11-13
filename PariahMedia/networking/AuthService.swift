//
//  AuthService.swift
//  PariahMedia
//
//  Created by Jaleel Gilbert on 11/13/22.
//

import Foundation


class AuthNetworking {
    
    
    func login(email: String, password: String) async throws -> String {
        guard let url = URL(string: "") else { throw APIError.invalidUrl }
        
        var request = URLRequest(url: url)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        
        let (data, response) = try await URLSession.shared.data(for: request)
        
        guard let httpResponse = response as? HTTPURLResponse else { throw APIError.invalidHttpResponse }
        
        try checkResponse(responseCode: httpResponse.statusCode)
        
        return try JSONDecoder().decode(String.self, from: data)
    }
    
    
    func register(username: String, email: String, password: String) async throws {
        
        guard let url = URL(string: "") else { throw APIError.invalidUrl }
        
        var request = URLRequest(url: url)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        
        let (_, response) = try await URLSession.shared.data(for: request)
        
        guard let httpResponse = response as? HTTPURLResponse else { throw APIError.invalidHttpResponse }
        
        try checkResponse(responseCode: httpResponse.statusCode)
        
    }
}
