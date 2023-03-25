//
//  HomeStack.swift
//  NetflixClone
//
//  Created by Fatih Filizol on 4.02.2023.
//

import Foundation
import SwiftUI



struct HomeStack: View {
    var vm: HomeVM
    
    var topRowSelection : HomeTopRow
    var selectedGenre : HomeGenre
    
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
        ForEach(vm.allCategories, id: \.self){ category in
            VStack{
                HStack{
                    Text(category)
                        .font(.title3)
                        .bold()
                    Spacer()
                }
                .padding(.leading, 6)
                ScrollView(.horizontal,showsIndicators: false) {
                    LazyHStack{
                        ForEach(vm.getMovie(forCat: category, andHomeRow: topRowSelection, andGenre: selectedGenre)) { movie in
                            StandardHomeMovie(movie: movie)
                                .frame(width: 135, height: 200)
                                .onTapGesture {
                                    movieDetailToShow = movie
                                }
                        }
                    }
                }
            }
        }
    }
}

struct HomeStack_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            ScrollView{
                HomeStack(vm: HomeVM(), topRowSelection: .home, selectedGenre: .AllGenres, movieDetailToShow: .constant(nil))
            }
            .foregroundColor(.white)
        }
    }
}
