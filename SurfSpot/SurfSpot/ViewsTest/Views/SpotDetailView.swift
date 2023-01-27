//
//  SpotView.swift
//  SurfSpot
//
//  Created by JuanitaAK on 18/01/2023.
//

import SwiftUI

struct SpotDetailView : View{
    
    var record: Records
    
    var body: some View{
        
       
        VStack { //(alignment: .center, spacing: 5.0)
            Text("Spot Details 🏄‍♀️")
                .font(.title3)
                .fontWeight(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.black)
                .bold()
                .padding([.bottom ], 3)
            //Problem with api geolocation. system crashe in some spots.
//        MapView(addressNav: record.fields.destination)
//                        .ignoresSafeArea(edges: .top)
//                        .frame(height: 110)
        //
            Text(record.fields.surfBreak[0])
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.black)
                .bold()
            ImageDetailView(record: record)
                .padding([.leading, .bottom, .trailing])
                .shadow(radius: 5)
            
            VStack(alignment: .leading){
                Text("🌊 Spot:  \(record.fields.destination)" )
                    .font(.title)
                    .foregroundColor(Color.black)
                    .padding(.bottom,5)
                Text(" 🗺️ Adresse: \(record.fields.destinationStateCountry)")
                    .font(.body)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom,3)
                Text("🧐 Difficulty: \(record.fields.difficultyLevel) / 5 " )
                    .font(.body)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom,3)
                Text("😀 Season starts: \(record.fields.peakSurfSeasonBegins)" )
                    .font(.body)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom,3)
                Text("😣 Season ends: \(record.fields.peakSurfSeasonEnds)" )
                    .font(.body)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom,5)
                LinkView(record: record)
                    .font(.body)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 3)
            }
        }
        .padding(.leading)
        .scaledToFill()
        .frame(width: 400, height: 680, alignment: .center)
        .background(Rectangle()
            .foregroundColor(Color.white))
        .cornerRadius(15)
        .shadow(radius: 10)
        .padding([.bottom, .top], -17)
   
    Spacer()
        
    }
}

//struct SpotDetailView_Previews: PreviewProvider {
//  static var previews: some View {
//        SpotDetailView(record: record)
//  }
//}
