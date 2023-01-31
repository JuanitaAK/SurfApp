//
//  DifficultyView.swift
//  SurfSpot
//
//  Created by Home on 27/01/2023.
//

import SwiftUI

struct DifficultyView: View {
    
    @State private var selectedNum = "What is the difficulty Level ?"
    @State private var isExpended = false
    //var difficulyLevels = ["1","2","3","4","5"]
    static let difficulyLevels = ["1","2","3","4","5"]
    var body: some View {
        VStack(alignment: .center, spacing:3){
            DisclosureGroup("\(selectedNum)", isExpanded: $isExpended){

                VStack{
                    ForEach(DifficultyView.difficulyLevels, id:\.self) {
                        num in

                        Spacer()
                        Text("\(num)")
                            .padding(.horizontal)
                            .onTapGesture {
                                self.selectedNum = num
                                withAnimation{
                                    self.isExpended.toggle()
                                }
                            }
                    }
                }
            }
            .accentColor(.gray)
            .foregroundColor(Color.gray)
            .padding(.vertical, 10.0)
            .cornerRadius(8)
        }
        .pickerStyle(.segmented)
    }
}

struct DifficultyView_Previews: PreviewProvider {
    static var previews: some View {
        DifficultyView()
    }
}
