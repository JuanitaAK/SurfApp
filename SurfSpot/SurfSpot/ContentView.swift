//
//  ContentView.swift
//  SurfSpot
//
//  Created by JuanitaAK on 03/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    
    @StateObject var apiFetcher = ApiFetcher()
    
    var body: some View {
        
        if apiFetcher.isLoading {
            LoadingView()
        } else if apiFetcher.errorMessage != nil {
            ErrorView(apiFetcher : apiFetcher)
        } else {
            RecordsListView( records : apiFetcher.records)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

