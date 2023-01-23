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
        
        ZStack (alignment: .top) {
            Color(.white)
                .ignoresSafeArea()
            
            VStack { //(alignment: .center, spacing: 5.0)
                Text("Spot Details 🏄‍♀️")
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.black)
                    .bold()
                    .padding(.bottom)
                
                Text(record.fields.surfBreak[0])
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.black)
                    .bold()
                    .padding(.bottom)
                
                ImageDetailView(record: record)
                    .padding([.leading, .bottom, .trailing])
                
                VStack(alignment: .leading){
                    Text( "🌊 Spot:  \(record.fields.destination)" )
                        .font(.title)
                        .foregroundColor(Color.black)
                        .padding(.bottom)
                    Text(  " 🗺️ Adresse: \(record.fields.destinationStateCountry)")
                        .font(.body)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom)
                    Text("🧐 Difficulty:  \(record.fields.difficultyLevel) " )
                        .font(.body)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom)
                    Text("😀 Season Begins:  \(record.fields.peakSurfSeasonBegins)" )
                        .font(.body)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom)
                    Text("😣 Season Begins:  \(record.fields.peakSurfSeasonEnds)" )
                        .font(.body)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom)
                    LinkView(record: record)
                        .font(.body)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom)
                }
                
                
            }
            .padding(.leading)
            .scaledToFit()
            .frame(width: 400, height: 780, alignment: .center)
            .background(Rectangle()
                .foregroundColor(Color.white))
            .cornerRadius(10)
            .shadow(radius: 4)
            .padding(.bottom)
        }
    }
    
}

//struct SpotDetailView_Previews: PreviewProvider {
//  static var previews: some View {
//        SpotDetailView(record: record)
//  }
//}
