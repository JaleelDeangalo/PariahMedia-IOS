//
//  User.swift
//  PariahMedia
//
//  Created by Jaleel Gilbert on 2/12/23.
//

import Foundation

struct User: Codable, Identifiable {
    let id: String
    let username: String
    let email: String
    let password: String
    let avatar: String
    let isAdmin: Bool
    let bio: String
    let isCreator: Bool
    let emailVerifiedAt: String
    
    private enum CodingKeys: String, CodingKey {
        case id = "_id"
        case username, email, password, avatar, bio, emailVerifiedAt
        case isCreator, isAdmin
    }
}
