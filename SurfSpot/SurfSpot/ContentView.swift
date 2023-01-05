//
//  ContentView.swift
//  SurfSpot
//
//  Created by Home on 03/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                
                Image(systemName: "figure.surfing")
                    .imageScale(.large)
                    .foregroundColor(Color.white)
                Image("SurfBoard")
                    .resizable()
                    .cornerRadius(40)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                Text("Surf Spot!")
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
                    .bold()
                    .italic()
            
            }
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
