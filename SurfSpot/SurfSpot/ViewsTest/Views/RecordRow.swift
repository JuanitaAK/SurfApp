//
//  RecordRow.swift
//  SurfSpot
//
//  Created by Home on 22/01/2023.
//

import SwiftUI

struct RecordRow: View {
    var record: Records
    var body: some View {
        VStack(alignment: .center, spacing: -12.0){
            
            Spacer()
            
            HStack(spacing: 19.0){
                
                ImageListView(record: record)
                
                VStack(alignment: .leading){
                    
                    Text(record.fields.surfBreak[0])
                        .font(.title2)
                        .foregroundColor(Color.black)
                        .padding([.top, .leading, .bottom], 1.0)
                        .bold()
                    
                    //Adress of the spot
                    Text(record.fields.address )
                }
                .padding(.leading, 6.0)
                
                Spacer()
            }
            .scaledToFill()
            .padding([.top, .leading, .bottom], 2.0)
            
            Spacer()
            
        }
        .padding(.leading)
        .scaledToFit()
        .frame(width: 350.0, height:100)
        .background(Rectangle()
            .foregroundColor(Color.white))
        .cornerRadius(10)
        .shadow(radius: 4)
    }
}

//struct RecordRow_Previews: PreviewProvider {
//    static var previews: some View {
//       
//        RecordRow()
//
//    }
//}

