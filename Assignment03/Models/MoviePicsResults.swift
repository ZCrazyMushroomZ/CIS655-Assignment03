//
//  MoviePicsResults.swift
//  Assignment03
//
//  Created by 碳基生物 on 2/27/24.
//

import Foundation

struct MoviePicsResults: Identifiable, Decodable {
    var id: Int?
    var backdrops: [MoviePicsInfo]
    var logos: [MoviePicsInfo]
    
    init(){
        id = 0
        backdrops = []
        logos = []
    }

    private enum CodingKeys: String, CodingKey {
        case id, backdrops, logos
    }
}
