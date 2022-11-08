 //
//  MovieModel.swift
//  MyMovieApp
//
//  Created by Hüseyin HÖBEK on 25.10.2022.
//

import Foundation



// MARK: - Movies
struct Results: Codable {
    let search: [Search]?
    
    enum CodingKeys: String, CodingKey {
        case search = "Search"
    }
    
}

// MARK: - Result
struct Search: Codable {
   
    let title, year, imdbID: String
    let poster: String
    
    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imdbID
        case poster = "Poster"
        
    }
   
}

