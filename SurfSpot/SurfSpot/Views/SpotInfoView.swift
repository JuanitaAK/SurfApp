//
//  SpotView.swift
//  SurfSpot
//
//  Created by Home on 18/01/2023.
//

import SwiftUI

struct SpotInfoView : View{
    
    var body: some View{
        
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

struct SpotView_Previews: PreviewProvider {
    static var previews: some View {
        SpotInfoView()
    }
}


/*
 //Possible botton
NavigationLink(destination: ListSpotsView(), label: {
    Text("Spots List")
        .padding()
        .bold()
        .background(Color.black)
        .foregroundColor(Color.white)
        .cornerRadius(10)
})
//Button( "Spots List") {}
 */
