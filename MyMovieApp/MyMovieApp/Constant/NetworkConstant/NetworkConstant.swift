//
//  NetworkConstant.swift
//  MyMovieApp
//
//  Created by Hüseyin HÖBEK on 4.11.2022.
// http://www.omdbapi.com/?i=tt3896198&apikey=a8f26325

import Foundation

extension Constant{
    class NetworkConstant{
        
        enum SearchServiceEndPoint: String {
            case BASE_URL = "https://www.omdbapi.com"
            case API_KEY = "apikey=a8f26325"
            
            static func searchMovie(searchMovieName: String) -> String {
                "\(BASE_URL.rawValue)?s=\(searchMovieName)&\(API_KEY.rawValue)"
            }
            
            static func detailMovie(movieImdbId: String) -> String {
                "\(BASE_URL.rawValue)?i=\(movieImdbId)&\(API_KEY.rawValue)"
            }
        }
    }
}
