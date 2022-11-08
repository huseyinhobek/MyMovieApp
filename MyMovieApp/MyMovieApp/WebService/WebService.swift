//
//  WenService.swift
//  MyMovieApp
//
//  Created by Hüseyin HÖBEK on 25.10.2022.
//

import Alamofire

protocol MovieServiceProtocol {
    func searchMovie(searchMovieName: String, completion: @escaping ([Search]?) -> Void)
    
    func getMovieDetail(movieImdbId: String, completion: @escaping (DetailResults?) -> Void)
}


final class Services: MovieServiceProtocol{
    func searchMovie(searchMovieName: String, completion: @escaping ([Search]?) -> Void) {
        AF.request(Constant.NetworkConstant.SearchServiceEndPoint.searchMovie(searchMovieName: searchMovieName)).responseDecodable(of: Results.self) {
            data in
            guard let data = data.value else {
                completion(nil)
                return
            }
            completion(data.search)
        }
    }
    
    func getMovieDetail(movieImdbId: String, completion: @escaping (DetailResults?) -> Void) {
        AF.request(Constant.NetworkConstant.SearchServiceEndPoint.detailMovie(movieImdbId: movieImdbId)).responseDecodable(of: DetailResults.self) {
            data in
            guard let data = data.value else {
                completion(nil)
                return
            }
            completion(data)
        }
    }
    
    
}
 
