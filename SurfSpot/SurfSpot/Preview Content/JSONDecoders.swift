//
//  JSONDecoders.swift
//  SurfSpot
//
//  Created by Home on 09/01/2023.
//

import Foundation


//chatGpt proposal

struct DemoData: Codable {
    var records: [Record]
}

struct Record: Codable {
    var id: String
    var fields: Fields
    var createdTime: Date
    
    static let allRecords: [Record] = Bundle.main.decode(file:"Data.json")
    static let sampleRecod: Record = allRecords[0]
}

struct Fields: Codable {
    enum CodingKeys: String, CodingKey {
        case surfBreak = "Surf Break"
        case difficultyLevel = "Difficulty Level"
        case name = "Destination"
        case geocode = "Geocode"
        case influencers = "Influencers"
        case link = "Magic Seaweed Link"
        case photos = "Photos"
        case seasonBegins = "Peak Surf Season Begins"
        case destination = "Destination State/Country"
        case seasonEnd = "Peak Surf Season Ends"
        
    }
    var surfBreak: [String]
    var difficultyLevel: Int
    var name: String
    var geocode: String
    var influencers: [String]
    var link: URL
    var photos: [Photo]
    var seasonBegins: Date
    var destination: String
    var seasonEnd: Date
    
}

struct Photo: Codable{
    enum CodingKeys: String, CodingKey {
        case photoLink = "url"
    }
    var photoLink: URL
}


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


/*
if let bundlePath = Bundle.main.path(forResource: "Data",
                                     ofType: "json"),
   let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
    print(jsonData)
    
   
}




private func readLocalFile(forName name: String) -> Data? {
    do {
        if let bundlePath = Bundle.main.path(forResource: name,
                                             ofType: "json"),
            let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
            return jsonData
        }
    } catch {
        print(error)
    }
    
    return nil
}
*/
