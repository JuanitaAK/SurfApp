//
//  ApiFetcher.swift
//  SurfSpot
//
//  Created by Home on 21/01/2023.
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



/*
 func fetchApi() {
     
     isLoading = true
     
     let url = URL(string: "https://api.airtable.com/v0/appxT9ln6ixuCb3o1/Surf%20Destinations?api_key=key8okdMqfhplfaKW")!
     
     let task = URLSession.shared.dataTask(with: url) {[unowned self] data, response, error in
         
         if let response = response as? HTTPURLResponse,!(200...299 ).contains(response.statusCode){
             //Todo Error
         }
         DispatchQueue.main.async {
             self.isLoading = false
         }
         if let data = data {
             
             do {
                 let result = try JSONDecoder().decode(ApiResult.self, from: data)
               
                 let records = result.records
                 DispatchQueue.main.async {
                     self.records = records
                 }
                 
             } catch {
                 print(error)
             }
             
         }
         
     task.resume()
         
     }
     
 }
 */
