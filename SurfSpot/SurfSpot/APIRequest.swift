//
//  Jsondecoder.swift
//  SurfSpot
//
//  Created by Home on 06/01/2023.
//https://www.youtube.com/watch?v=A7PrupXL_EA

import Foundation
/*
class APIRequest {
    static let instance = APIRequest()
    
    //variables api
    private var url = "https://api.airtable.com/v0/appxT9ln6ixuCb3o1/Surf%20Destinations?"
    private var token = "api_key=key8okdMqfhplfaKW"
    
    public func getData(){
        //let query: String = "quote?symbol=\(symbol)"
        // add query url when it will be defined
        let url = URL(string: url + token )
        let decoder = JSONDecoder()
         
        if let url = url {
            let task = URLSession.shared.dataTask(with: url){data, response, error in
                if let error = error{
                    //we have an error
                    print("error getting quote:\(error)")
                    return
                }
                guard let quoteData = data else{
                    print("data search not valid")
                    return
                }
                let returnResponse = try? decoder.decode(SurfData.self, from: quoteData)
                print(returnResponse)
            }
            task.resume()
        }
    }
}
*/
