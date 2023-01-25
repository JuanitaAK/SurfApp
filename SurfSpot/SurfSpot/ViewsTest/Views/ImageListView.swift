//
//  ImageListView.swift
//  SurfSpot
//
//  Created by JuanitaAK on 23/01/2023.
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
                    HStack(alignment: .center){
                        Text("😬")
                            .font(.system(size: 20))
                        Text("Problem with the image.")

                    }
                    .multilineTextAlignment(.leading)

                      
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


   
