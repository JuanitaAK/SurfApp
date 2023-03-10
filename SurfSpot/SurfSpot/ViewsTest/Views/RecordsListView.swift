//
//  SpotRowView.swift
//  SurfSpot
//
//  Created by JuanitaAK on 18/01/2023.
//

import SwiftUI



struct RecordsListView: View {
    
    // @State private var selectedTab: Tab = .list
    
    let records: [Records]
    
    var body: some View {
        
        NavigationView {
            List(records, id:  \.id){ record in
                
                NavigationLink{
                    SpotDetailView(record: record )
                        
                } label: {
                    RecordRow(record: record)
                }
            }
            .navigationTitle("Surf Spots List")
        }
    }
}
        
        


struct SpotRowView_Previews: PreviewProvider {
    static var previews: some View {
        RecordsListView(records: [Records]())
    }
}
