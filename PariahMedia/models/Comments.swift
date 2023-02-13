//
//  Comments.swift
//  PariahMedia
//
//  Created by Jaleel Gilbert on 2/12/23.
//

import Foundation

struct Comments: Codable, Identifiable {
    let id: String
    let comment: String
    let user: String
    let authorId: String
    let articleId: String
    let date: String
    
    private enum CodingKeys: String, CodingKey {
        case id = "_id"
        case comment = "commentText"
        case user, authorId, articleId, date
    }
}
