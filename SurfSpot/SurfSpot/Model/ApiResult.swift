//
//  JSONDecoders.swift
//  SurfSpot
//
//  Created by JuanitaAK on 09/01/2023.
//
//Parsin the JSON from the API

/*
import Foundation

    // MARK: - SurfAPP
    struct ApiResult: Codable {
        let records: [Records]
    }
    
    // MARK: - Record
    struct Records: Codable, Identifiable {
        let id: String
        let fields: Fields
        let createdTime: String
        
        //static let allRecord :[Record] = Bundle.main.decode(file: "Data")
        //static let sampleRecod: Record   = allRecord[0]
    }
    
    // MARK: - Fields
    struct Fields: Codable {
        enum CodingKeys: String, CodingKey {
            case surfBreak = "Surf Break"
            case difficultyLevel = "Difficulty Level"
            case destination = "Destination"
            case geocode = "Geocode"
            //case influencers = "Influencers"
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
        //let influencers: [String]
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
    
*/
