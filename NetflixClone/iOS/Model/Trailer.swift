//
//  Trailer.swift
//  NetflixClone
//
//  Created by Fatih Filizol on 28.01.2023.
//

import Foundation


struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
