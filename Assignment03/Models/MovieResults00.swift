//
//  MovieResults00.swift
//  Assignment03
//
//  Created by 碳基生物 on 2/26/24.
//

import Foundation

// Get movie lists
class MovieResultsOO: ObservableObject {
    @Published var results = MovieResults(page: 0, numResults: 0, numPages: 0, movies: [])
    var finished = false
    func getByType(type: String){
        if !finished{
            downloadMovieList(type: type, completed: { r in
                self.results = r
            })
            finished = true
        }
    }
    
    // Underlying internet request part for getting list of movies
    func downloadMovieList(type: String, completed: @escaping (MovieResults) -> () ) {
        let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=b26d449aa4bd93fdc74c50c689262df0")
        URLSession.shared.dataTask(with: url!){ (data, response, err) in
            if err == nil {
                // check downloaded JSON data
                guard let jsondata = data else { return }
                do {
                    let results = try JSONDecoder().decode(MovieResults.self, from: jsondata)
                    print("OK1")
                    DispatchQueue.main.async {
                        completed(results)
                    }
                }catch {
                    print("JSON Downloading Error!")
                }
            }
        }.resume()
    }

}
