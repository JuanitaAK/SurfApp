//
//  SpotListView.swift
//  SurfSpot
//
//  Created by Home on 17/01/2023.
//

import SwiftUI

struct SpotListView: View {
    @State private var records = [Records]()
    @State private var photos = [Records]()
    
    var body: some View {
        
        List(records, id:  \.id){ item in
            //NavigationLink{
            
            
            
            VStack(alignment: .leading){
                HStack{
                    VStack(alignment: .center){
                        Text(item.fields.surfBreak[0])
                            .font(.title2)
                            .foregroundColor(Color.black)
                            .padding([.top, .leading, .bottom], 3.0)
                            .bold()
                        
                        Text(item.fields.address )
                    }
                    .scaledToFill()
                }
                .scaledToFill()
            }
            .scaledToFill()
            .frame(width: 350.0, height:100)
            .background(Rectangle()
                .foregroundColor(Color.white))
            .cornerRadius(10)
            .shadow(radius: 6)
            //  }
            
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

