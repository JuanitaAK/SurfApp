//
//  ImageListView.swift
//  SurfSpot
//
//  Created by Home on 23/01/2023.
//

import SwiftUI

struct ImageListView: View {
    var record: Records
    var body: some View {
        AsyncImage(
            url:URL(string:   record.fields.photos[0].url)){ phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                } else if phase.error != nil {
                    Text("There was an error loading the image.")
                } else {
                    ProgressView()
                }
            }
            .frame(width: 100, height: 100)
            .padding([.top, .leading, .bottom], -2.0)


    }
}

//struct ImageListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ImageListView()
//    }
//}


   
