//
//  HomeView.swift
//  NetflixClone
//
//  Created by Fatih Filizol on 1.01.2023.
//

import SwiftUI

struct HomeView: View {
    var vm = HomeVM()
    
    let screen = UIScreen.main.bounds
    
    @State private var movieDetailToShow : Movie? = nil
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            //main vstack
            ScrollView(showsIndicators: false){
                LazyVStack{
                    
                    ExtractedView()
                    
                    TopMoviePreview(movie: exampleMovie1)
                        .frame(width: screen.width)
                        .padding(.top, -120)
                        .zIndex(-1)
                    
                    ForEach(vm.allCategories, id: \.self){ category in
                        VStack{
                            HStack{
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                    Spacer()
                            }
                            ScrollView(.horizontal,showsIndicators: false) {
                                LazyHStack{
                                    ForEach(vm.getMovie(forCat: category)) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
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
            if movieDetailToShow != nil {
                MovieDetail(movie: movieDetailToShow!, movieDetailToShow: $movieDetailToShow)
                    .animation(.easeIn)
                    .transition(.opacity)
            }
            //Color.blue
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct ExtractedView: View {
    var body: some View {
        HStack{
            Button {
                //
            } label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            }
            .buttonStyle(PlainButtonStyle())
            
            
            
            Spacer()
            
            Button {
                //
            } label: {
                Text("TV Shows")
            }
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button {
                //
            } label: {
                Text("Movies")
            }
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button {
                //
            } label: {
                Text("Series")
            }
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button {
                //
            } label: {
                Text("My List")
            }
            .buttonStyle(PlainButtonStyle())
        }
        .padding(.leading,10)
        .padding(.trailing,30)
    }
}
