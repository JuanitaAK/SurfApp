//
//  SpotListView.swift
//  SurfSpot
//
//  Created by Home on 17/01/2023.
//

import SwiftUI

struct SpotListView: View {
    @State private var records = [Records]()
    
    
    var body: some View {
        
        List(records, id:  \.id){ item in
           // VStack(alignment: .leading){
                //NavigationLink(destination: SpotListView(), label: {
                
            VStack(alignment: .center){
                 Spacer()
                    HStack{
                        //"https://dl.airtable.com/ZuXJZ2NnTF40kCdBfTld_thomas-ashlock-64485-unsplash.jpg"
                        AsyncImage(
                            url:URL(string:item.fields.photos[0].url)){ phase in
                                if let image = phase.image {
                                    image
                                        .resizable()
                                        .scaledToFit()
                                } else if phase.error != nil {
                                    Text("There was an error loading the image.")
                                } else {
                                    ProgressView()
                                }
                            }
                            .frame(width: 100, height: 100)
                            
                        
                        VStack(alignment: .leading){
                            //Title of the spot
                            Text(item.fields.surfBreak[0])
                                .font(.title2)
                                .foregroundColor(Color.black)
                                .padding([.top, .leading, .bottom], 3.0)
                                .bold()
                            //Adress of the spot
                            Text(item.fields.address )
                                .scaledToFit()
                        }
                        .scaledToFit()
                    
                    }
                Spacer()
                    .padding(.leading, 16.0)
            }
            //.padding(.leading, 1.0)
                .scaledToFit()
                .frame(width: 350.0, height:100)
                .background(Rectangle()
                    .foregroundColor(Color.white))
                .cornerRadius(10)
                .shadow(radius: 4)
          
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

