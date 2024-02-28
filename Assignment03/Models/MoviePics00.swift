//
//  MoviePics00.swift
//  Assignment03
//
//  Created by 碳基生物 on 2/26/24.
//

import Foundation
// Obtain poster and backdrop list
class MoviePicsOO: ObservableObject{
    @Published var backdrops: [MoviePicsInfo] = []
    @Published var posters: [PicData] = []
    var finished: Bool = false
//    func getImgs(id: Int, size: String = "w342") {
//        if !self.finished{
//            var counter = 0
//            // Get backdrops
//            downloadMoviePics(id: id, completed: { r in
//                for i in r.backdrops {
//                    self.getImage(url: i.filePath ?? "", size: size, completed: { g in
//                        self.backdrops.append(PicData(id: i.filePath ?? "", image: g))
//                    })
//                    counter += 1
//                }
//            })
//        }
//    }
    
    // Underlying internet request part for getting list of images (posters and backdrops)
    func downloadMoviePics(id: Int, completed: @escaping (MoviePicsResults) -> () ) {
        let url = URL(string: "https://api.themoviedb.org/3/movie/\(id)/images?api_key=b26d449aa4bd93fdc74c50c689262df0")
        URLSession.shared.dataTask(with: url!){ (data, response, err) in
            if err == nil {
                // check downloaded JSON data
                guard let jsondata = data else { return }
                do {
                    let results = try JSONDecoder().decode(MoviePicsResults.self, from: jsondata)
                    print("OK1")
                    DispatchQueue.main.async {
                        completed(results)
                    }
                }catch{
                    print("JSON Downloading Error!")
                }
            }
        }.resume()
    }
    
    func getImage(url: String, size: String, completed: @escaping (MoviePicsInfo) -> ()) {
        let url = URL(string: "https://api.themoviedb.org/3/movie/t/p/\(size)/\(url)?api_key=b26d449aa4bd93fdc74c50c689262df0")
        URLSession.shared.dataTask(with: url!){ (data, response, err) in
            if err == nil {
                // check downloaded JSON data
                guard let jsondata = data else { return }
                do {
                    let results = try JSONDecoder().decode(MoviePicsInfo.self, from: jsondata)
                    print("OK2")
                    DispatchQueue.main.async {
                        completed(results)
                    }
                }catch{
                    print("JSON Downloading Error!")
                }
            }
        }.resume()
    }

}
