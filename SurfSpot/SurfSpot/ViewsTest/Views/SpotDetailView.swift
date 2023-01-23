//
//  SpotView.swift
//  SurfSpot
//
//  Created by Home on 18/01/2023.
//

import SwiftUI

struct SpotDetailView : View{
    
    var record: Records
    //var
    
    var body: some View{
 
            ZStack {
                Color(.white)
                    .ignoresSafeArea()
                VStack (alignment: .center, spacing: 20.0){
                    
                    Text("Spot Details 🏄‍♀️")
                        .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.black)
                        .bold()
                        .padding(.horizontal)
                    
                    Spacer()
                    
                    VStack (alignment: .center){
                        Text(record.fields.surfBreak[0])
                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                            .fontWeight(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color.black)
                            .bold()
                            .padding(.top)
                        AsyncImage(
                            url:URL(string:record.fields.photos[0].url)){ phase in
                                if let image = phase.image {
                                    image
                                        .resizable()
                                    //.aspectRatio(contentMode: .fit)
                                        .scaledToFit()
                                        .cornerRadius(10)
                                } else if phase.error != nil {
                                    Text("There was an error loading the image.")
                                } else {
                                    ProgressView()
                                }
                            }
                            //.frame(width: 400, height:500)
                            .padding([.all],6.0)

                        HStack {
                            //Image(systemName: "figure.surfing")
                              //  .padding([.top, .bottom, .trailing])
                                //.frame(width: 0.0, height: 0.0)
                               // .imageScale(.large)
                               // .foregroundColor(Color.black)
                            Text( " 🌊 Spot:  \(record.fields.destination)" )
                                .font(.title)
                                .foregroundColor(Color.black)
                                .padding(.leading, 3.0)
                        }
                        .padding(.bottom)
                        
                        Text(  " 🗺️ Adresse: \(record.fields.destinationStateCountry)")
                            .font(.body)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .padding(.bottom)
                        Text("🧐 Difficulty:  \(record.fields.difficultyLevel) / 5" )
                            .font(.body)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .padding(.bottom)
                        Text("😀 Season Begins:  \(record.fields.peakSurfSeasonBegins) / 5" )
                            .font(.body)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .padding(.bottom)
                        Text("😣 Season Begins:  \(record.fields.peakSurfSeasonEnds) / 5" )
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
                    .background(Rectangle()
                        .foregroundColor(Color.white))
                    .cornerRadius(30)
                    .shadow(radius: 15)
                    .padding([.top, .leading, .bottom], 2.0)
                    
                   
            }
                
        }
            .padding(.bottom)
        Spacer()
    }
        
}

//struct SpotDetailView_Previews: PreviewProvider {
  //static var previews: some View {
    //    SpotDetailView(record: record)
  //}
//}
