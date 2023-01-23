//
//  ListView.swift
//  SurfSpot
//
//  Created by Home on 21/01/2023.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack(spacing: 20){
            Text("🏄‍♀️")
                .font(.system(size: 90))
            ProgressView()
            Text("Searching for  \n the best  \n surfing spots...")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
