//
//  Article.swift
//  PariahMedia
//
//  Created by Jaleel Gilbert on 2/12/23.
//

import Foundation

struct Article: Codable, Identifiable {
    let id: String
    let author: String
    let title: String
    let subtitle: String
    let content: String
    let coverImage: String
    let genre: String
    let date: String
    
    private enum CodingKeys: String, CodingKey {
        case id = "_id"
        case author, title, subtitle, content, coverImage, genre, date
    }
}
