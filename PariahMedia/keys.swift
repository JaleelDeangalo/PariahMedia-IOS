//
//  keys.swift
//  PariahMedia
//
//  Created by Jaleel Gilbert on 11/13/22.
//

import Foundation


public let TOKEN: String = ""

public enum APIError: Error {
    case badRequest400
    case notAuthorized401
    case notFound404
    case internalServerError500
    case invalidUrl
    case invalidHttpResponse
    case unknownError
}


func checkResponse(responseCode: Int) throws {
    if responseCode > 299 {
        
        switch responseCode {
        case 400:
            throw APIError.badRequest400
            
        case 401:
            throw APIError.notAuthorized401
            
        case 404:
            throw APIError.notFound404
            
        case 500:
            throw APIError.internalServerError500
            
        default:
            throw APIError.unknownError
        }
    }
}
