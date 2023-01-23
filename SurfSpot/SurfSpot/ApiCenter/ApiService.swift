//
//  ApiServiceControl.swift
//  SurfSpot
//
//  Created by Home on 21/01/2023.
//

import Foundation

struct ApiService {
    
    func fetchingGeneral<T: Decodable>(_ type: T.Type, url: URL?, completation: @escaping(Result<T,ApiError>)-> Void ){
        guard let url = url else {
            let error = ApiError.badURL
            completation(Result.failure(error))
            return
        }
        let task = URLSession.shared.dataTask(with: url) { (data, response, error)  in
            
            if let error = error as? URLError {
                completation(Result.failure(ApiError.url(error)))
            }else if let response = response as? HTTPURLResponse, !(200...299).contains(response.statusCode) {
                completation(Result.failure(ApiError.badResponse(statusCode: response.statusCode)))
            } else if let data = data {
                
                do {
                    let result = try JSONDecoder().decode(type, from: data)
                    
                    completation(Result.success(result)) 
                    
                } catch {
                    completation(Result.failure(ApiError.parsing(error as? DecodingError)))
                }
                
            }
            
        }
        
        task.resume()
    }
    
    
    
    
    func fetch(url: URL?, completation:@escaping(Result<[Records], ApiError>) -> Void){
        
        guard let url = url else {
            let error = ApiError.badURL
            completation(Result.failure(error))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error as? URLError {
                completation(Result.failure(ApiError.url(error)))
            }else if let response = response as? HTTPURLResponse, !(200...299).contains(response.statusCode) {
                completation(Result.failure(ApiError.badResponse(statusCode:response.statusCode)))
            } else if let data = data {
                
                do {
                    let result = try JSONDecoder().decode(ApiResult.self, from: data)
                    let records = result.records
                    
                    completation(Result.success(records))
                    
                } catch {
                    completation(Result.failure(ApiError.parsing(error as? DecodingError)))
                }
                
            }
            
        }
        
        task.resume()
    }
}
