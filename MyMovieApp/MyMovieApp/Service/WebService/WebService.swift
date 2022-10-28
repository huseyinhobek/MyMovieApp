//
//  WenService.swift
//  MyMovieApp
//
//  Created by Hüseyin HÖBEK on 25.10.2022.
//

import Alamofire

protocol ServiceProtocol {
    func fetchMovies(onSucces: @escaping (Movies?) -> (), onError: @escaping (AFError) -> ())
}

final class Service: ServiceProtocol{
    func fetchMovies(onSucces: @escaping (Movies?) -> (), onError: @escaping (Alamofire.AFError) -> ()) {
        ServiceManager.shared.fetch(path: Constant.ServiceEndPoint.moviesServiceEndPoint()) { (response: Movies) in
            onSucces(response)
        } onError: { error in
            onError(error)
        }

    }
    
}
