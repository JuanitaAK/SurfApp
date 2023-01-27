//
//  ImageDetailView.swift
//  SurfSpot
//
//  Created by JuanitaAK on 23/01/2023.
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
                        .scaledToFill()
                        .cornerRadius(10)
                } else if phase.error != nil {
                    Text("😭 ")
                        .font(.system(size: 60))
                    Text("Sorry... can't load the image.")
                        .multilineTextAlignment(.leading)
                        
                } else {
                    ProgressView()
                }
            } 
            .frame(width: 390, height: 290)
            .padding([.horizontal],-15.0)
            .cornerRadius(20)
            .shadow(radius: 15)
    }
}

//struct ImageDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        ImageDetailView()
//    }
//}
