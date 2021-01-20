//
//  OnboardingView.swift
//  MovieApp
//
//  Created by Alper Kavusturan on 15/01/2021.
//

import SwiftUI

struct OnboardingView: View {
    
    var movies: [Movie] = moviesData
    
    var body: some View {
    NavigationView{
        TabView{
            ForEach(movies[0...1]){item in
                MovieCardView(movie: item)
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 10)
        .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/)
    }
    .navigationViewStyle(StackNavigationViewStyle())
        
    }
    
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(movies: moviesData)
    }
}
