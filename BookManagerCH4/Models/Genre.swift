//
//  Genre.swift
//  BookManagerCH4
//
//  Created by Luis Renteria on 12/2/25.
//

enum Genre: String, CaseIterable, Hashable, Codable {
    case classic = "Classic"
    case fantasy = "Fantasy"
    case scienceFiction = "Science Fiction"
    case romance = "Romance"
    case horror = "Horror"
    // Base case
    case unknown = "Unknown"
}
