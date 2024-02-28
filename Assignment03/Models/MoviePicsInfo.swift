//
//  MoviePics.swift
//  Assignment03
//
//  Created by 碳基生物 on 2/27/24.
//

import Foundation

// Struct for movie picture for each single movie by id
struct MoviePicsInfo:Decodable {
    
    let aspectRatio: Double?
    let height: Int?
    let iso6391: String?
    let filePath: String?
    let voteAverage: Double?
    let voteCount: Int?
    let width: Int?
    // How is JSON going to be parsed
    private enum CodingKeys: String, CodingKey {
        case height,
             width,
             aspectRatio = "aspect-ratio",
             iso6391 = "iso_639_1",
             filePath = "file_path",
             voteAverage = "vote_average",
             voteCount = "vote_count"
    }
}
