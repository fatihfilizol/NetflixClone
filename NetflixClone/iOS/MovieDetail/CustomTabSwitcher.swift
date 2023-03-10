//
//  CustomTabSwitcher.swift
//  NetflixClone
//
//  Created by Fatih Filizol on 22.01.2023.
//

import SwiftUI

struct CustomTabSwitcher: View {
    
    @State private var currentTab: CustomTab = .episodes
    

    
    var tabs : [CustomTab]
    var movie: Movie
    @Binding var showSeasonPicker: Bool
    @Binding var selectedseason: Int
    
    func widthForTab (_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack{
            // Custom tab picker
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 20){
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            //red bar
                            Rectangle()
                                .frame(width: widthForTab(tab),height: 6)
                                .foregroundColor(tab==currentTab ? Color.red : Color.clear)
                            //button
                            Button {
                                currentTab = tab
                            } label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(tab==currentTab ? Color.white : Color.gray)
                            }
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: widthForTab(tab),height: 30)

                            
                        }
                    }
                }
            }
            
            // Selected view
            switch currentTab {
            case .episodes:
                EpisodesView(episodes: movie.episodes ?? [] , showSeasonPicker: $showSeasonPicker, selectedSeason: $selectedseason)
            case .trailers:
                TrailerList(trailers: movie.trailers)
            case .more:
                MoreLikeThis(movies: movie.moreLikeThisMovies)
            }
        }
        .foregroundColor(.white)
    }
}

enum CustomTab : String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            CustomTabSwitcher(tabs : [.episodes, .trailers, .more], movie: exampleMovie1, showSeasonPicker: .constant(false), selectedseason: .constant(1))
        }
    }
}

