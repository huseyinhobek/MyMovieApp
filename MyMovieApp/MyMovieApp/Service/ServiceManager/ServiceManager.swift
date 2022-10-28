//
//  ServiceManager.swift
//  MyMovieApp
//
//  Created by Hüseyin HÖBEK on 25.10.2022.
//

import Alamofire

// MARK - Service Manager

final class ServiceManager {
    
    static let shared: ServiceManager = ServiceManager()
    
}

extension ServiceManager {
    func  fetch<T>(path: String, onSucces: @escaping (T) -> (), onError: (AFError) -> ()) where T: Codable {
        AF.request(path, encoding: JSONEncoding.default).validate().responseDecodable(of: T.self) { response in
            guard let model = response.value else { print(response.error as Any ); return}
            onSucces(model)
        }
    }
}
