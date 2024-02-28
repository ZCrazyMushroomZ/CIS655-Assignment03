//
//  singleRow.swift
//  Assignment03
//
//  Created by 碳基生物 on 2/27/24.
//

import Foundation
import SwiftUI

struct singleRowView: View {
    @ObservedObject var movieResults:MovieResultsOO
    @ObservedObject var moviePicResults:MoviePicsOO
    @State var singleMovie: MovieInfo
    @State var updateState = false
    @State var path = "nullpath"
    
    var body: some View {
        HStack {
            Text(singleMovie.title)
                .font(.headline)
            Spacer()
            if path != "nullpath"{
                AsyncImage(url:URL(string: "https://image.tmdb.org/t/p/w92/\(path)")){img in
                    img
                }placeholder: {
                    ProgressView()
                }
            }
        }
        .onAppear{
            moviePicResults.downloadMoviePics(id: singleMovie.id, completed: { r in
                for singlePic in r.backdrops{
                    path = singlePic.filePath ?? "default"
                    break
                }
            })
            updateState.toggle()
        }
    }
}


#Preview {
    MainView()
}


