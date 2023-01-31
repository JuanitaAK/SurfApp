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
                Section(header: Text("Mandatory information")
                    .padding(.top, 10.0)){
                    TextField("Spot's Name", text: $name)
                    TextField("Spot's Address", text: $address)
                    TextField("Spot's Surf Break", text: $surfBreak)
                    TextField("Image (url only)", text : $img)
                }
                
                Section(header: Text("Other Information")
                    
                ){
                    DifficultyView()
                       
                    TextField("Spot's webpage (url)", text: $link)
                        .datePickerStyle(.graphical)
                    DatePicker("Season starts:", selection: $dateStart, displayedComponents: [.date])
                        .foregroundColor(Color.gray)

                    DatePicker("Season ends:", selection: $dateEnd, displayedComponents: [.date])
                        .foregroundColor(Color.gray)
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
            .navigationTitle("New Spot Form")
        }
    }
}

struct NewSpotForm_Previews: PreviewProvider {
    static var previews: some View {
        NewSpotForm()
    }
}
