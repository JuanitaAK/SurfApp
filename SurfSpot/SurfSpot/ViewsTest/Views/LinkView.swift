//
//  LinkView.swift
//  SurfSpot
//
//  Created by Home on 23/01/2023.
//

import SwiftUI

struct LinkView: View {
    var record: Records
    
    var body: some View {
        Link(destination: URL(string: record.fields.magicSeaweedLink)!){
            HStack{
                Text("👩‍💻 Show spot website ")
            }
            
        }.frame(width: 250, height: 60)
              .foregroundColor(.black)
              .background(Rectangle()
                  .foregroundColor(Color.white))
              .cornerRadius(5)
              .shadow(radius: 4)
              
    }
}

//struct LinkView_Previews: PreviewProvider {
  //  static var previews: some View {
    //    LinkView()
    //}
//}
