//
//  Network.swift
//  AppcentCase
//
//  Created by KBM-PC on 18.05.2022.
//

import Foundation
struct Network{
    
    
    func fetchData<T: Codable> (url:String, completion: @escaping(Result< T, Error>) -> Void){
        guard let url = URL(string: url) else{
            return
        }
        let session = URLSession.shared
        session.dataTask(with: url) { data, response, error in
            let decoder = JSONDecoder()
            if let error = error {
                completion(.failure(error.localizedDescription as! Error))
            }
            
            if let data = data {
                do {
                    let decoded = try decoder.decode(T.self, from: data)
                        completion(.success(decoded))
                   
                }
                catch{
                    completion(.failure(error.localizedDescription as! Error))
                }
            }
        }.resume()
        
    }
}

