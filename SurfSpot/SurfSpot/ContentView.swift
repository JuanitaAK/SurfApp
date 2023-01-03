//
//  ContentView.swift
//  SurfSpot
//
//  Created by Home on 03/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "figure.surfing")
                .imageScale(.large)
                .foregroundColor(.red)
            Text("Surf Spot!")
            .bold()
            .italic()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
