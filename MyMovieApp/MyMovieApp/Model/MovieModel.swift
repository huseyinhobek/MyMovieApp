 //
//  MovieModel.swift
//  MyMovieApp
//
//  Created by Hüseyin HÖBEK on 25.10.2022.
//

import Foundation



// MARK: - Movies
struct Movies: Codable {
    let results: [Result]

    
}

// MARK: - Result
struct Result: Codable {
   
    let originalTitle, overview: String
    let popularity: Double
    let posterPath, releaseDate, title: String
    let voteAverage: Double

   
}

