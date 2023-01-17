//
//  Spot.swift
//  SurfSpot
//
//  Created by JuanitaAK on 17/01/2023.
//
/*
import Foundation

class SpotListModel: ObservableObject {
    
    @Published var records: [Records] = [Records]()
    
    
    func decodeAPI(){
        guard let url = URL(string: "https://api.airtable.com/v0/appxT9ln6ixuCb3o1/Surf%20Destinations?api_key=key8okdMqfhplfaKW") else{
            return
        }
        
        URLSession.shared.dataTask(with: url){
            data, response, error in
            
            if let error = error {
                
                print("Url session error: \(error.localizedDescription)")
                
            }else if let data = data {
                
                do{
                    let result = try JSONDecoder().decode(ApiResult.self, from: data)
                    self.records = result.records
                    print("You have an Api")
                    //for eachBeach in ApiResult.records {print(eachBeach)}
                    //print(surfList)
                }catch{
                    print("Decoding error \(error )")
                }
            }
        }.resume()
        
    }
}
    


struct Spot{
    var surfBreak: [String]
    var difdifficultyLevel: Int
    var destination : String
    var photos: [Photo]
    var address: String
 
 }

extension Spot {
    static let appData: [SurfSpotApp] =
}


    var body: View  some{
        
        ZStack {
            Color(.white)
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 20.0) {
                
                Text("Surf Spot!")
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.black)
                    .bold()
                    .padding(.bottom)
                
                VStack {
                    Image("SurfBoard")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    HStack {
                        Image(systemName: "figure.surfing")
                            .padding([.top, .bottom, .trailing])
                            .frame(width: 0.0, height: 0.0)
                            .imageScale(.large)
                            .foregroundColor(Color.black)
                        Text("TitleSurfingSpot Name")
                            .font(.title)
                            .foregroundColor(Color.black)
                            .padding(.leading, 3.0)
                    }
                    Text("Description. country,city, name")
                        .font(.body)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                    Text("Adress to go to")
                        .font(.body)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom)
                }
                .background(Rectangle()
                    .foregroundColor(Color.white))
                .cornerRadius(30)
                .shadow(radius: 15)
                .padding()
            }
        }
    }

}
 */
