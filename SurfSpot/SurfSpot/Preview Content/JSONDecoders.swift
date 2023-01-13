//
//  JSONDecoders.swift
//  SurfSpot
//
//  Created by JuanitaAK on 09/01/2023.
//


// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let surfAPP = try? JSONDecoder().decode(SurfAPP.self, from: jsonData)



//Parsin the JSON from the API
import Foundation

// MARK: - SurfAPP
struct SurfAPP: Codable {
    let records: [Record]
    
    
}

// MARK: - Record
struct Record: Codable {
    let id: String
    let fields: Fields
    let createdTime: String
}

// MARK: - Fields
struct Fields: Codable {
    enum CodingKeys: String, CodingKey {
        case surfBreak = "Surf Break"
        case difficultyLevel = "Difficulty Level"
        case destination = "Destination"
        case geocode = "Geocode"
        case influencers = "Influencers"
        case magicSeaweedLink = "Magic Seaweed Link"
        case photos = "Photos"
        case peakSurfSeasonBegins = "Peak Surf Season Begins"
        case destinationStateCountry = "Destination State/Country"
        case peakSurfSeasonEnds = "Peak Surf Season Ends"
        case address = "Address"
    }
    let surfBreak: [String]
    let difficultyLevel: Int
    let destination, geocode: String
    let influencers: [String]
    let magicSeaweedLink: URL
    let photos: [Photo]
    let peakSurfSeasonBegins, destinationStateCountry, peakSurfSeasonEnds, address: String

}

// MARK: - Photo
struct Photo: Codable {
    let id: String
    let url: String
    let filename: String
    let size: Int
    let type: String
    let thumbnails: Thumbnails
}

// MARK: - Thumbnails
struct Thumbnails: Codable {
    let small:  Small
    let large: Large
    let full: Full
}

// MARK: - Small
struct Small: Codable {
    let url: URL
    let width, height: Int
}

// MARK: - Large
struct Large: Codable {
    let url: URL
    let width, height: Int
}

// MARK: - Full
struct Full: Codable {
    let url: URL
    let width, height: Int
}



// Decodind the jason

extension Bundle {
    func decode<T: Decodable>(file:String) -> T{
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("Courl not find the \(file) in the projetc")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Courl not load the \(file) in the projetc")
        }
        let decoder = JSONDecoder()
        
        guard let loadedData = try? decoder.decode(T.self, from: data) else{
            fatalError("Courl not decode the \(file) in the projetc")
        }
        return loadedData
    } 
}
