//
//  SpotRowView.swift
//  SurfSpot
//
//  Created by Home on 18/01/2023.
//

import SwiftUI

struct RecordsListView: View {
    
    let records: [Records]
    
    var body: some View {
        
        NavigationView {
            List(records, id:  \.id){ record in
                
                NavigationLink{
                    SpotDetailView( record: record )
                } label: {
                    
                    VStack(alignment: .center, spacing: -12.0){
                        
                        Spacer()
                        
                        HStack(spacing: 19.0){
                            
                            
                            AsyncImage(
                                url:URL(string:record.fields.photos[0].url)){ phase in
                                    if let image = phase.image {
                                        image
                                            .resizable()
                                            .scaledToFit()
                                            .cornerRadius(10)
                                    } else if phase.error != nil {
                                        Text("There was an error loading the image.")
                                    } else {
                                        ProgressView()
                                    }
                                }
                            
                                .frame(width: 100, height: 100)
                                .padding([.top, .leading, .bottom], -2.0)
                            
                            
                            
                            VStack(alignment: .leading){
                                
                                //Title of the spot
                                Text(record.fields.surfBreak[0])
                                    .font(.title2)
                                    .foregroundColor(Color.black)
                                    .padding([.top, .leading, .bottom], 1.0)
                                    .bold()
                                
                                //Adress of the spot
                                Text(record.fields.address )
                                
                            }
                            .padding(.leading, 6.0)
                            
                            Spacer()
                            
                        }
                        .scaledToFill()
                        .padding([.top, .leading, .bottom], 2.0)
                        
                        Spacer()
                        
                    }
                    .padding(.leading)
                    .scaledToFit()
                    .frame(width: 350.0, height:100)
                    .background(Rectangle()
                        .foregroundColor(Color.white))
                    .cornerRadius(10)
                    .shadow(radius: 4)
                }
            }
            
            .navigationTitle("Surf Spots List")
        }
        
        
        
        
    }
}
        
        


struct SpotRowView_Previews: PreviewProvider {
    static var previews: some View {
        //RecordsListView(records: records )
        RecordsListView(records: [Records]())
    }
}
