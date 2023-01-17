//
//  SpotListView.swift
//  SurfSpot
//
//  Created by Home on 17/01/2023.
//

import SwiftUI


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





struct SpotListView: View {
    @State private var records = [Records]()
    
    var body: some View {
        List(records, id:  \.id){ item in
            VStack(alignment: .leading){
                NavigationLink(destination: SpotListView(), label: {
                    VStack{
                        Text(item.fields.surfBreak[0])
                            //.font(.title2)
                            //.foregroundColor(Color.black)
                            //.padding([.top, .leading, .bottom], 3.0)
                        Text(item.fields.address )
                    }
                    .scaledToFill()
                    .frame(width: 400, height:90)
                    .background(Rectangle()
                        .foregroundColor(Color.white))
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    Spacer()
                }
                
            )
                
            }
        }
        .task {
            await decodeAPI()
        }
    }
    
    //fetching API
    func decodeAPI() async {
        guard let url = URL(string: "https://api.airtable.com/v0/appxT9ln6ixuCb3o1/Surf%20Destinations?api_key=key8okdMqfhplfaKW") else{
            print("Invalid url")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            if let decodedResponse = try? JSONDecoder().decode(ApiResult.self, from: data){
                records = decodedResponse.records
            }
                
        } catch {
            print("Invalid data")
        }
        
    }
}

struct SpotListView_Previews: PreviewProvider {
    static var previews: some View {
        SpotListView()
    }
}
