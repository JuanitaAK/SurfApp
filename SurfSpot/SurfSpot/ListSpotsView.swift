//
//  ListSpotsView.swift
//  SurfSpot
//
//  Created by JuanitaAK on 06/01/2023.
//

import SwiftUI

struct ListSpotsView: View {
    var body: some View {
        ZStack {
            Color(.white)
                .ignoresSafeArea()
            VStack{
                
                Text("Spots List!")
                    .multilineTextAlignment(.leading)
                    .padding(.vertical)
                    .font(.title)
                    .foregroundColor(Color.black)
                VStack{
                    NavigationLink(destination: ContentView(), label: {
                        VStack{
                            //Text("Spots Name")
                              //  .bold()
                                //.background(Color.black)
                                //.foregroundColor(Color.white)
                                //.cornerRadius(10)
                                
                            Text("TitleSurfingSpot Name")
                                .font(.title2)
                                .foregroundColor(Color.black)
                                .padding([.top, .leading, .bottom], 3.0)
                            
                            Text("Adresse")
                                .font(.body)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .padding([.leading, .bottom, .trailing])
                            
                            }
                    })
                        
                    
                        
                }
                .background(Rectangle()
                    .foregroundColor(Color.white))
                .cornerRadius(10)
                .shadow(radius: 5)
            
            }
        }
    }
}


/*
struct ListSpotsView: View {
    var body: some View {
        
        ZStack {
            Color(.white)
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 20.0) {
                
                Text("Surf Spots!")
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
                NavigationLink(destination: ListSpotsView(), label: {
                    Text("Spots List")
                        .padding()
                        .bold()
                        .background(Color.black)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        
                })
            }
            
        }

    }
}

*/



struct ListSpotsView_Previews: PreviewProvider {
    static var previews: some View {
        ListSpotsView()
        //ContentView()
    }
}
