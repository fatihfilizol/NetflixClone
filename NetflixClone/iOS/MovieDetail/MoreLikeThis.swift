//
//  MoreLikeThis.swift
//  NetflixClone
//
//  Created by Fatih Filizol on 26.01.2023.
//

import SwiftUI

struct MoreLikeThis: View {
    
    var movies : [Movie]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns) {
                ForEach(movies) { movie in
                    StandardHomeMovie(movie: movie)
                }
            }
        }
    }
}

struct MoreLikeThis_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThis(movies: exampleMovies)
    }
}
