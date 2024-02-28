//
//  PicsData.swift
//  Assignment03
//
//  Created by 碳基生物 on 2/27/24.
//

import Foundation
struct PicData: Identifiable, Decodable {
    let id: String?
    var image: MoviePicsInfo


    private enum CodingKeys: String, CodingKey {
        case
             image,
             id = "file_path"
    }
}
