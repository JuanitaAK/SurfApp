//
//  FavoriteButton.swift
//  SurfSpot
//
//  Created by JuanitaAK on 27/01/2023.
//

import SwiftUI

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Favorite", systemImage: isSet ? "hart.fill" : "hart")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .blue : .red)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
