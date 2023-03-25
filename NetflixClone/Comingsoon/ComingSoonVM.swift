//
//  ComingSoonVM.swift
//  NetflixClone
//
//  Created by Fatih Filizol on 25.03.2023.
//

import Foundation


class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init(){
        self.movies = generateMovies(20)
    }
}
