//
//  ImageDetailView.swift
//  SurfSpot
//
//  Created by Home on 23/01/2023.
//

import SwiftUI

struct ImageDetailView: View {
    
    var record: Records
    var body: some View {
        AsyncImage(
            url:URL(string:   record.fields.photos[0].url)){ phase in
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
            .padding([.all],6.0)

    }
}

//struct ImageDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        ImageDetailView()
//    }
//}
