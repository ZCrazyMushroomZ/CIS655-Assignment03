//
//  ContentView.swift
//  Assignment03
//
//  Created by 碳基生物 on 2/26/24.


import SwiftUI


struct MainView: View {
    @ObservedObject var movieResults = MovieResultsOO()
    @ObservedObject var moviePicResults = MoviePicsOO()
    @State var updateState = false
    @State var path = "nullpath"

    var body: some View {
        NavigationView {
            List{
                ForEach(movieResults.results.movies){singleMovie in
                    NavigationLink(destination: MovieDetailView(singleMovie: singleMovie)) {
                        singleRowView(movieResults: movieResults, moviePicResults: moviePicResults, singleMovie: singleMovie)
                    }
                }
            }
        }

        .onAppear {
            movieResults.getByType(type: "popular")
        }
    }
}

#Preview {
    MainView()
}

#Preview {
    MainView()
}
