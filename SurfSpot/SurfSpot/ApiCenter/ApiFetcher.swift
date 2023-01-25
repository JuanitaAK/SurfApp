//
//  ApiFetcher.swift
//  SurfSpot
//
//  Created by JuanitaAK on 21/01/2023.
//

import Foundation


class ApiFetcher : ObservableObject {
    
    @Published var records = [Records]()
    @Published var isLoading: Bool = false
    @Published var errorMessage : String? = nil
    
    init(){
        
        fetchAll()
    }
    
    
    func fetchAll() {
        
        isLoading = true
        errorMessage = nil
        
        let service = ApiService()
        let url = URL(string: "https://api.airtable.com/v0/appxT9ln6ixuCb3o1/Surf%20Destinations?api_key=key8okdMqfhplfaKW")
        //let url = URL(string: "http://127.0.0.1:5000/spots")
        
        service.fetch(url: url){ [unowned self] result in
            
            DispatchQueue.main.async {
                self.isLoading = false
                switch result {
                case .failure(let error):
                    self.errorMessage = error.localizedDescription
                    print(error)
                case .success(let records):
                    //print("--- sucess with \(records.count)")
                    self.records = records
                }
            }
            
        }
    }
    
    //preview helpers
    
    static func errorState() -> ApiFetcher{
        let fetcher = ApiFetcher()
        fetcher.errorMessage = ApiError.url(URLError.init(.notConnectedToInternet)).localizedDescription
        return fetcher
    }
    
    static func successState() -> ApiFetcher {
        let fetcher = ApiFetcher()
        fetcher.records = [Records]()
       
        
        return fetcher
        
        
    }
}
