//
//  LinkView.swift
//  SurfSpot
//
//  Created by JuanitaAK on 23/01/2023.
//

import SwiftUI

struct LinkView: View {
    var record: Records
    
    var body: some View {
        Link(destination: URL(string: record.fields.magicSeaweedLink)!){
            HStack{
                Text("👩‍💻 Spot website ")
            }
            
        }.frame(width: 210, height: 40)
              .foregroundColor(.blue)
              .background(Rectangle()
                  .foregroundColor(Color.white))
              .cornerRadius(20)
              .shadow(radius: 7)
              .padding(.all)
              
    }
}

//struct LinkView_Previews: PreviewProvider {
  //  static var previews: some View {
    //    LinkView()
    //}
//}
