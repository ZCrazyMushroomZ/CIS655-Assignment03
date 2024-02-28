//
//  MovieDetailView.swift
//  Assignment03
//
//  Created by 碳基生物 on 2/27/24.
//

import Foundation
import SwiftUI

struct MovieDetailView: View {
    @State var singleMovie: MovieInfo
    var body: some View {
        Text("hello world")
        Text(singleMovie.title)
    }
}

#Preview {
    MainView()
}
