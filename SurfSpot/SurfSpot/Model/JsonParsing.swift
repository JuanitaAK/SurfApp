//
//  JSONDecoders.swift
//  SurfSpot
//
//  Created by JuanitaAK on 09/01/2023.
//
//Parsin the JSON from the API

import Foundation

    // MARK: - SurfAPP
    struct ApiResult: Codable {
        let records: [Records]
        
        //init(records: [Records]) {
          //      self.records = records
            //}
    }
    
    // MARK: - Record
struct Records: Codable, Identifiable {
        let id: String
        let fields: Fields
        let createdTime: String
        
        /*init(id: String, fields: Fields, createdTime: String) {
            self.id = id
            self.fields = fields
            self.createdTime = createdTime
        }*/
    
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
        let magicSeaweedLink: String
        let photos: [Photo]
        let peakSurfSeasonBegins, destinationStateCountry, peakSurfSeasonEnds, address: String
        
        /*init(surfBreak: [String], difficultyLevel: Int, destination: String, geocode: String, magicSeaweedLink: URL, photos: [Photo], peakSurfSeasonBegins: String, destinationStateCountry: String, peakSurfSeasonEnds: String, address: String) {
            self.surfBreak = surfBreak
            self.difficultyLevel = difficultyLevel
            self.destination = destination
            self.geocode = geocode
            self.magicSeaweedLink = magicSeaweedLink
            self.photos = photos
            self.peakSurfSeasonBegins = peakSurfSeasonBegins
            self.destinationStateCountry = destinationStateCountry
            self.peakSurfSeasonEnds = peakSurfSeasonEnds
            self.address = address
        }*/
    }
    
    // MARK: - Photo
    struct Photo: Codable {
        let id: String
        let url: String
        let filename: String
        let size: Int
        let type: String
        let thumbnails: Thumbnails
        
        /*init(id: String, url: String, filename: String, size: Int, type: String, thumbnails: Thumbnails) {
                self.id = id
                self.url = url
                self.filename = filename
                self.size = size
                self.type = type
                self.thumbnails = thumbnails
            }*/
    }
    
    // MARK: - Thumbnails
    struct Thumbnails: Codable {
        let small:  Small
        let large: Large
        let full: Full
        
        /*init(small: Small, large: Large, full: Full) {
                self.small = small
                self.large = large
                self.full = full
            }*/
    }
    
    // MARK: - Small
    struct Small: Codable {
        let url: URL
        let width, height: Int
        
       /* init(url: URL, width: Int, height: Int){
            self.url = url
            self.width = width
            self.height = height
        }*/
    }
    
    // MARK: - Large
    struct Large: Codable {
        let url: URL
        let width, height: Int
        
        /*init(url: URL, width: Int, height: Int){
            self.url = url
            self.width = width
            self.height = height
        }*/
    }
    
    // MARK: - Full
    struct Full: Codable {
        let url: URL
        let width, height: Int
        
        /*init(url: URL, width: Int, height: Int){
            self.url = url
            self.width = width
            self.height = height
        }*/
    }
    
/*
class ViewModel: ObservableObject {
    
 
    @Published var records : [Records] = []
    
    
    
    
    

    func fetch() {
        guard let url = URL(string: "https://api.airtable.com/v0/appxT9ln6ixuCb3o1/Surf%20Destinations?api_key=key8okdMqfhplfaKW") else{
            print("Invalid url")
            return
        }
        
        let task = URLSession.shared.data(with: url) { [weak self] data, _, error in
            if let error = error {
                
                print("Url session error: \(error.localizedDescription)")
                
            }else if let data = data {
                
                do{
                    let result = try JSONDecoder().decode(ApiResult.self, from: data)
                    let records = result.records
                    DispatchQueue.main.async {
                        self?.records = records
                    }
                    
                } catch {
                    print("Invalid data")
                }
            }
            
           
        }
        task.resume()
    }
     */

