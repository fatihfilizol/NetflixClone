//
//  GlobalHelpers.swift
//  NetflixClone
//
//  Created by Fatih Filizol on 1.01.2023.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://m.media-amazon.com/images/M/MV5BZGZlN2QzYTQtNmZkMy00YjdiLWIwOGUtMzlhZTJlMmIyNmJhXkEyXkFqcGdeQXVyOTQ2MjQ3MTI@._V1_FMjpg_UX1000_.jpg")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2010,
    rating: "TV-MA",
    numberOfSeasons: 25,
    defaultEpisodeInfo: exampleEpisodeInfo,
    creators: "Onur Ünlü",
    cast: "Ali Atay, Serkan Keskin",
    promotionHeadline: "New episodes coming soon")
let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "TRAVELERS",
    thumbnailURL: URL(string: "https://img.tv100.com/rcman/Cw600h870q95gm/storage/files/images/2022/10/06/23243-a-3795-CXDg.jpg")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2010,
    rating: "TV-MA",
    numberOfSeasons: 8,
    defaultEpisodeInfo: exampleEpisodeInfo,
    creators: "Onur Ünlü",
    cast: "Ali Atay, Serkan Keskin",
    promotionHeadline: "Best Rated Show")
let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "ALONE",
    thumbnailURL: URL(string: "https://cestquoicebazar.files.wordpress.com/2020/07/0298185.jpg-r_1920_1080-f_jpg-q_x-xxyxx.jpg")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2010,
    rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisodeInfo,
    creators: "Onur Ünlü",
    cast: "Ali Atay, Serkan Keskin")
let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "COMMUNİTY",
    thumbnailURL: URL(string: "https://i5.walmartimages.com/asr/b38602c7-de1e-4afc-a5cb-d8623b9b3190.e35fd1cac0a8a64745857c6a8e873547.jpeg")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2010,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo,
    creators: "Onur Ünlü",
    cast: "Ali Atay, Serkan Keskin",
    promotionHeadline: "Watch Season 2 Now")
let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "HANNİBAL",
    thumbnailURL: URL(string: "https://tr.web.img3.acsta.net/r_1280_720/pictures/21/09/09/12/31/0936837.jpg")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2010,
    rating: "TV-MA",
    defaultEpisodeInfo: exampleEpisodeInfo,
    creators: "Onur Ünlü",
    cast: "Ali Atay, Serkan Keskin")
let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "AFTER LIFE",
    thumbnailURL: URL(string: "https://cdn.dsmcdn.com/ty102/product/media/images/20210411/15/79263755/68335978/1/1_org_zoom.jpg")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2010,
    rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo,
    creators: "Onur Ünlü",
    cast: "Ali Atay, Serkan Keskin")



let exampleMovies: [Movie] = [exampleMovie1,exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6]

let exampleEpisodeInfo = CurrentEpisodeInfo(episodeName: "Beginnings and Endings", desription: "Six months after the disappearances, the police from a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event", season: 2, episode: 1)


extension LinearGradient{
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0),Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom
    )
    
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
