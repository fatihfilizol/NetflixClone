//
//  StandardHomeMovie.swift
//  NetflixClone
//
//  Created by Fatih Filizol on 1.01.2023.
//

import SwiftUI
import KingfisherSwiftUI

struct StandardHomeMovie: View {
    var movie: Movie
    var body: some View {
        KFImage(movie.thumbnailURL)
        .resizable()
        .scaledToFit()
        
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie:exampleMovie1)
            
    }
}
