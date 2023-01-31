//
//  TabView.swift
//  SurfSpot
//
//  Created by JuanitaAK on 25/01/2023.
//

import SwiftUI


struct NewTabView: View {
    
    
    var body: some View {
        
        TabView {
            ContentView()
                .tabItem {
                    Label("List", systemImage: "list.bullet.circle")
                }
            //FormView()
            NewSpotForm()
                .tabItem {
                    Label("Add a Spot", systemImage: "plus.circle")
                }
//            Text("Favorites")
//                .tabItem{
//                    Label("Favorites",systemImage: "house")
//                }
        }
    }
}
