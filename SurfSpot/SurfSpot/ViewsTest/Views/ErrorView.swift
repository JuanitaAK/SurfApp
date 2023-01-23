//
//  ErrorView.swift
//  SurfSpot
//
//  Created by Home on 21/01/2023.
//

import SwiftUI

struct ErrorView: View {
    
    @ObservedObject var apiFetcher : ApiFetcher
    
    var body: some View {
        VStack{
            
            Text(" 😭")
                .font(.system(size: 80))
            Text(apiFetcher.errorMessage ?? "")
        }
      
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
       ErrorView(apiFetcher: ApiFetcher())
    }
}
