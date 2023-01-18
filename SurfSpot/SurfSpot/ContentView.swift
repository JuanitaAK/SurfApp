//
//  ContentView.swift
//  SurfSpot
//
//  Created by JuanitaAK on 03/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            VStack(alignment: .center){
                Text("Surf Spots List!")
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.black)
                    .bold()
                    .padding(.bottom)
                
                SpotListView()
            }
           
        }
        .padding(.all)
        .background(Color.white)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
