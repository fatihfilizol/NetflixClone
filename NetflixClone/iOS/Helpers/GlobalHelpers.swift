//
//  GlobalHelpers.swift
//  NetflixClone
//
//  Created by Fatih Filizol on 1.01.2023.
//

import Foundation
import SwiftUI

let exampleVideoURL = URL(string: "https://www.youtube.com/watch?v=XV2m8WRCWG8")!

let exampleImageURL = URL(string: "https://yorumguncel.com/wp-content/uploads/2022/03/leyla-ile-mecnun-2-sezon-11-bolum-ne-zaman-yayinlanacak-exxen.jpg")!
let exampleImageURL2 = URL(string: "https://s01.diziler.com/original/21-10/04/leyla-ile-mecnun-2sezon-3.jpg")!
let exampleImageURL3 = URL(string: "https://cdn.kayiprihtim.com/wp-content/uploads/2021/06/leyla-ile-mecnun-bolum-sayisi-exxen.jpeg")!

var randomExampleImageURL : URL {
    return [ exampleImageURL, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL
}

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer2 = Trailer(name: "The Hero's Journey", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer3 = Trailer(name: "Season 2 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)

let exampleTrailers = [exampleTrailer1,exampleTrailer2,exampleTrailer3]

let episode1 = Episode(name: "Beginnings and Endinga",
                       season: 1,
                       episodeNumber: 1,
                       thumbnailImageURLString: "https://cdn.kayiprihtim.com/wp-content/uploads/2021/06/leyla-ile-mecnun-bolum-sayisi-exxen.jpeg",
                       description: "Six months after the disappearances, the police from a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event",
                       length: 53,
                       videoURL: exampleVideoURL)
let episode2 = Episode(name: "Dark Matter",
                       season: 1,
                       episodeNumber: 2,
                       thumbnailImageURLString: "https://s01.diziler.com/original/21-10/04/leyla-ile-mecnun-2sezon-3.jpg",
                       description: "In 2052, Jonas learns that most of Winden perished in an apocalyptic event. Six months after the disappearances, the police from a task force. ",
                       length: 54,
                       videoURL: exampleVideoURL)
let episode3 = Episode(name: "Ghosts",
                       season: 1,
                       episodeNumber: 3,
                       thumbnailImageURLString: "https://yorumguncel.com/wp-content/uploads/2022/03/leyla-ile-mecnun-2-sezon-11-bolum-ne-zaman-yayinlanacak-exxen.jpg",
                       description: "Six months after the disappearances, the police from a task force. In 2052.",
                       length: 56,
                       videoURL: exampleVideoURL)
let episode4 = Episode(name: "Beginnings and Endinga",
                       season: 2,
                       episodeNumber: 4,
                       thumbnailImageURLString: "https://cdn.kayiprihtim.com/wp-content/uploads/2021/06/leyla-ile-mecnun-bolum-sayisi-exxen.jpeg",
                       description: "Six months after the disappearances, the police from a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event",
                       length: 53,
                       videoURL: exampleVideoURL)
let episode5 = Episode(name: "Dark Matter",
                       season: 2,
                       episodeNumber: 5,
                       thumbnailImageURLString: "https://s01.diziler.com/original/21-10/04/leyla-ile-mecnun-2sezon-3.jpg",
                       description: "In 2052, Jonas learns that most of Winden perished in an apocalyptic event. Six months after the disappearances, the police from a task force. ",
                       length: 54,
                       videoURL: exampleVideoURL)
let episode6 = Episode(name: "Ghosts",
                       season: 2,
                       episodeNumber: 6,
                       thumbnailImageURLString: "https://yorumguncel.com/wp-content/uploads/2022/03/leyla-ile-mecnun-2-sezon-11-bolum-ne-zaman-yayinlanacak-exxen.jpg",
                       description: "Six months after the disappearances, the police from a task force. In 2052.",
                       length: 56,
                       videoURL: exampleVideoURL)

var allExampleEpisodes = [episode1, episode2, episode3, episode4, episode5, episode6]


let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "LEYLA İLE MECNUN",
    thumbnailURL: URL(string: "https://m.media-amazon.com/images/M/MV5BZGZlN2QzYTQtNmZkMy00YjdiLWIwOGUtMzlhZTJlMmIyNmJhXkEyXkFqcGdeQXVyOTQ2MjQ3MTI@._V1_FMjpg_UX1000_.jpg")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2010,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo,
    creators: "Onur Ünlü",
    cast: "Ali Atay, Serkan Keskin",
    moreLikeThisMovies: [exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6,exampleMovie7],
    episodes: allExampleEpisodes,
    promotionHeadline: "New episodes coming soon",
    trailers: exampleTrailers,
    previewImagename: "ozarkPreview",
    previewVideoURL: exampleVideoURL)
let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "GİBİ",
    thumbnailURL: URL(string: "https://img.tv100.com/rcman/Cw600h870q95gm/storage/files/images/2022/10/06/23243-a-3795-CXDg.jpg")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2010,
    rating: "TV-MA",
    numberOfSeasons: 8,
    defaultEpisodeInfo: exampleEpisodeInfo,
    creators: "Onur Ünlü",
    cast: "Ali Atay, Serkan Keskin",
    moreLikeThisMovies: [],
    promotionHeadline: "Best Rated Show",
    trailers: exampleTrailers,
    previewImagename: "darkPreview",
    previewVideoURL: exampleVideoURL)
    
let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "AFTER LIFE",
    thumbnailURL: URL(string: "https://cestquoicebazar.files.wordpress.com/2020/07/0298185.jpg-r_1920_1080-f_jpg-q_x-xxyxx.jpg")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2010,
    rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisodeInfo,
    creators: "Onur Ünlü",
    cast: "Ali Atay, Serkan Keskin",
    moreLikeThisMovies: [],
    trailers: exampleTrailers,
    previewImagename: "dirtyJohnPreview",
    previewVideoURL: exampleVideoURL)
let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "STRANGER THINGS",
    thumbnailURL: URL(string: "https://i5.walmartimages.com/asr/b38602c7-de1e-4afc-a5cb-d8623b9b3190.e35fd1cac0a8a64745857c6a8e873547.jpeg")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2010,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo,
    creators: "Onur Ünlü",
    cast: "Ali Atay, Serkan Keskin",
    moreLikeThisMovies: [],
    promotionHeadline: "Watch Season 2 Now",
    trailers: exampleTrailers,
    previewImagename: "travelersPreview",
    previewVideoURL: exampleVideoURL)
let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "THE BILLION DOLLAR CODE",
    thumbnailURL: URL(string: "https://tr.web.img3.acsta.net/r_1280_720/pictures/21/09/09/12/31/0936837.jpg")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2010,
    rating: "TV-MA",
    defaultEpisodeInfo: exampleEpisodeInfo,
    creators: "Onur Ünlü",
    cast: "Ali Atay, Serkan Keskin",
    moreLikeThisMovies: [],
    trailers: exampleTrailers,
    previewImagename: "arrestedDevPreview",
    previewVideoURL: exampleVideoURL)
let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "SILICON VALLEY",
    thumbnailURL: URL(string: "https://cdn.dsmcdn.com/ty102/product/media/images/20210411/15/79263755/68335978/1/1_org_zoom.jpg")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2010,
    rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo,
    creators: "Onur Ünlü",
    cast: "Ali Atay, Serkan Keskin",
    moreLikeThisMovies: [],
    trailers: exampleTrailers,
    previewImagename: "whiteLinesPreview",
    previewVideoURL: exampleVideoURL)
let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name: "SILICON VALLEY",
    thumbnailURL: URL(string: "https://cdn.dsmcdn.com/ty102/product/media/images/20210411/15/79263755/68335978/1/1_org_zoom.jpg")!,
    categories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],
    year: 2010,
    rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo,
    creators: "Onur Ünlü",
    cast: "Ali Atay, Serkan Keskin",
    moreLikeThisMovies: [],
    trailers: exampleTrailers,
    previewImagename: "ozarkPreview",
    previewVideoURL: exampleVideoURL)



var exampleMovies: [Movie] {
    return [exampleMovie1,exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6,exampleMovie7].shuffled()
}

let exampleEpisodeInfo = CurrentEpisodeInfo(episodeName: "Beginnings and Endings", description: "Six months after the disappearances, the police from a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event", season: 2, episode: 1)


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

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction((#selector(UIResponder.resignFirstResponder)), to: nil, from: nil, for: nil)
    }
}
