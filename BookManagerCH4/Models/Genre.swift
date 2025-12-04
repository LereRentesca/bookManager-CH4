//
//  Genre.swift
//  BookManagerCH4
//
//  Created by Luis Renteria on 12/2/25.
//
import SwiftUI

enum Genre: String, CaseIterable, Hashable, Codable, Identifiable {
//    case classic = "Classic"
//    case fantasy = "Fantasy"
//    case scienceFiction = "Science Fiction"
//    case romance = "Romance"
//    case horror = "Horror"
//    // Base case
//    case unknown = "Unknown"
    case classic
    case fantasy
    case romance
    case unknown
    
    var id: String { self.rawValue }
    
    var color: Color {
        switch self {
        case .classic: return .green
        case .fantasy: return .blue
        case .romance: return .red
        case .unknown: return .gray
        }
    }
    var text: String {
        switch self {
        case .classic: return "Classic"
        case .fantasy: return "Fantasy"
        case .romance: return "Romance"
        case .unknown: return "Unknown"
        }
    }
}
