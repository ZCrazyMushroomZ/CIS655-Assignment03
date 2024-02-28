//
//  MovieResults.swift
//  Assignment03
//
//  Created by 碳基生物 on 2/26/24.
//

import Foundation

struct MovieResults: Decodable {
    let page: Int?
    let numResults: Int?
    let numPages: Int?
    var movies: [MovieInfo]
    private enum CodingKeys: String, CodingKey {
        case page, numResults = "total_results", numPages = "total_pages", movies = "results"
    }
}
