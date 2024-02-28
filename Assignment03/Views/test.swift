////
////  test.swift
////  Assignment03
////
////  Created by 碳基生物 on 2/27/24.
////
//
//import Foundation
//import SwiftUI
//
//struct ContentView: View {
//    @ObservedObject var moviePicResults = MoviePicsOO()
//
//    var body: some View {
//        VStack {
//            if !moviePicResults.backdrops.isEmpty {
//                Text("Backdrops:")
//                ScrollView(.horizontal) {
//                    HStack {
//                        ForEach(moviePicResults.backdrops) { backdrop in
//                            if let filePath = backdrop.filePath {
//                                RemoteImage(url: filePath)
//                                    .frame(width: 200, height: 150) // Adjust size as needed
//                            }
//                        }
//                    }
//                }
//            }
//            
//        }
//    }
//}
//
//struct RemoteImage: View {
//    let url: String
//    
//    var body: some View {
//        if let imageURL = URL(string: url), let imageData = try? Data(contentsOf: imageURL), let uiImage = UIImage(data: imageData) {
//            Image(uiImage: uiImage)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//        } else {
//            // Placeholder image or error handling
//            Text("Image not available")
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
