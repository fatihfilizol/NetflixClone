//
//  Movie.swift
//  NetflixClone
//
//  Created by Fatih Filizol on 1.01.2023.
//

import Foundation


struct Movie: Identifiable{
    var id: String
    var name : String
    var thumbnailURL: URL
    
    var categories : [String]
    
    //Movie Detail View
    
    var year : Int
    var rating : String
    var numberOfSeasons : Int?
    
    
    //Personalization
    var currentEpisode: CurrentEpisodeInfo?
    
    
    var defaultEpisodeInfo : CurrentEpisodeInfo
    var creators : String
    var cast : String
    
    var episodes : [Episode]?
    
    var promotionHeadline : String?
    
    var numberOfseansonsDisplay :String{
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        
        return ""
    }
    
    var episodeInfoDisplay : String {
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        } else {
            return "S\(defaultEpisodeInfo.season):E\(defaultEpisodeInfo.episode) \(defaultEpisodeInfo.episodeName)"
        }
    }
    var episodeDescriptionDisplay : String {
        if let current = currentEpisode {
            return current.desription
        } else {
            return defaultEpisodeInfo.desription
        }
    }
}


struct CurrentEpisodeInfo : Hashable, Equatable {
    var episodeName : String
    var desription : String
    var season : Int
    var episode : Int
}
