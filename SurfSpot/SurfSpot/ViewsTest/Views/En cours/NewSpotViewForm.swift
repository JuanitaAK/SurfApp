//
//  NewSpotView.swift
//  SurfSpot
//
//  Created by JuanitaAK on 26/01/2023.
//

import SwiftUI

import SwiftUI

struct NewSpotForm: View {
    
    @State var name : String = ""
    @State var address : String = ""
    @State var surfBreak : String = ""
    @State var img : String = ""
    @State var diff = "1"
    let difficulties = ["1 ", "2 ", "3 ", "4 ", "5 "]
    @State private var dateStart = Date()
    @State private var dateEnd = Date()
    @State var link : String = ""
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Spot information we need")){
                    TextField("Spot's Name", text: $name)
                    TextField("Spot's Address", text: $address)
                    TextField("Spot's Surf Break", text: $surfBreak)
                    TextField("Image (url only)", text : $img)
                }
                
                Section(header: Text("Other Information")){
                    Text("Difficulty")
                    Picker("Diff", selection: $diff) {
                        ForEach(difficulties, id: \.self) {
                            Text($0)
                                .padding([.bottom, .top], -10)
                        }
                    }
                    .pickerStyle(.segmented)
                    
                    TextField("Spot's webpage (url)", text: $link)
                        .datePickerStyle(.graphical)
                    
                    Text("Season starts:")
                    DatePicker("Start Date", selection: $dateStart, displayedComponents: [.date])
                        .datePickerStyle(.graphical)
                    
                    Text("Season ends:")
                    DatePicker("End Date", selection: $dateEnd, displayedComponents: [.date])
                        .datePickerStyle(.graphical)
                    
                }
                Section {
                    Button(action: {
                        print("Added")
                    }) {
                        Text("Add a new spot")
                            .padding(.leading)
                            
                    }

                    .frame(width: 340, height: 50)
                    .background(.thinMaterial)
                    .cornerRadius(20)
                    .padding(.all, 5)
                }
            }
        }
    }
}

struct NewSpotForm_Previews: PreviewProvider {
    static var previews: some View {
        NewSpotForm()
    }
}




//struct NewSpotView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct NewSpotView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewSpotView()
//    }
//}
