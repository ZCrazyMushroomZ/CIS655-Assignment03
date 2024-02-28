//
//  MovieInfo.swift
//  Assignment03
//
//  Created by 碳基生物 on 2/26/24.
//

import Foundation

// Struct for movie metatdata for each single movie
struct MovieInfo: Identifiable, Decodable {
    let id: Int
    let posterPath: String?
    let title: String
    let voteAverage: Double?
    let voteCount: Int?
    let releaseDate: String?
    let backdropPath: String?
    let overview: String?
    let originalTitle: String?
    let popularity: Double?
    let genresIDs: [Int]?
    // How is JSON going to be parsed
    private enum CodingKeys: String, CodingKey {
        case id,
             title,
             overview,
             popularity,
             posterPath = "poster_path",
             voteAverage = "vote_average",
             voteCount = "vote_count",
             backdropPath = "backdrop_path",
             releaseDate = "release_date",
             originalTitle = "original_title",
             genresIDs = "genre_ids"
    }
}
