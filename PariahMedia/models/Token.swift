//
//  Token.swift
//  PariahMedia
//
//  Created by Jaleel Gilbert on 12/28/22.
//

import Foundation

struct Token: Codable {
    let token: String
    
    private enum CodingKeys: String, CodingKey {
        case token
    }
}
