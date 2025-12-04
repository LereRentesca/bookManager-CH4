//
//  ReadingStatus.swift
//  BookManagerCH4
//
//  Created by Luis Renteria on 12/2/25.
//

// This is an enum that will be used to determine all the possible
// ReadingStatus, so we know what books I want to read, which one I'm currently reading or which I have finished reading them.

// Value is saved as string.
// Implements CaseIterable protocol so we can iterate through cases
// Hashable makes them easy to access
// Codable makes it possible to save them into json format
enum ReadingStatus: String, CaseIterable, Hashable, Codable {
    case planToRead = "Plan to Read"
    case reading = "Reading"
    case dropped = "Dropped"
    case finished = "Finished"
    // Base case
    case unknown = "Unknown"
}
