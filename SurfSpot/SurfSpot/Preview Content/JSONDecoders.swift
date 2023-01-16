//
//  smallDecoder.swift
//  SurfSpot
//
//  Created by Home on 16/01/2023.
//

import Foundation

// MARK: - SurfAPP
struct SmallSurfAPP: Codable {
    let records: [Record]
    
    
}

// MARK: - Record
struct Record: Codable {
    let id: String
    let fields: Fields
    let createdTime: String
    
    static let allRecord :String = "test"//Bundle.main.decode(file: "smallData")
    //static let sampleRecod: Record   = allRecord[0]
    
}

// MARK: - Fields
struct Fields: Codable {
    enum CodingKeys: String, CodingKey {
        case surfBreak = "Surf Break"

    }
    let surfBreak: [String]
    
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
}
