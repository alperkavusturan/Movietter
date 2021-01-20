//
//  MovieCardView.swift
//  MovieApp
//
//  Created by Alper Kavusturan on 14/01/2021.
//

import SwiftUI

struct MovieCardView: View {
    // MARK: - PROPERTIES
    
    var movie: Movie
    
    @State private var isAnimating: Bool = false
    
    //MARK: - BODY
    var body: some View {
            ZStack{
                ZStack{
                    VStack (spacing: 20){
                        // MOVIE: IMAGE
                        Image(movie.poster)
                            .scaledToFit()
                            .shadow(color: Color(red:0, green:0, blue:0,
                                                 opacity:0.15), radius: 8, x: 6, y: 8)
                        
                        // MOVIE: TITLE
                        VStack{
                            Text(movie.title)
                                .foregroundColor(Color.white)
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),
                                        radius: 0.15, x: 2, y: 2)
                                .scaleEffect(isAnimating ? 1.0 : 0.6)
                            // MOVIE: IMDB + YEAR + MOOD
                            VStack{
                                Text(String(movie.year))
                                    .foregroundColor(.gray)
                                    .font(.subheadline)
                                    .fontWeight(.light)
                                HStack{
                                    Text(movie.mood)
                                        .foregroundColor(.gray)
                                        .font(.footnote)
                                        .fontWeight(.ultraLight)
                                    Text("-")
                                        .foregroundColor(.gray)
                                        .font(.caption)
                                    Text(String(format: "%.1f", movie.imdb))
                                        .foregroundColor(.gray)
                                        .font(.footnote)
                                        .fontWeight(.ultraLight)
                                }
                                
                            }
                            .multilineTextAlignment(.center)
                        }
                        // MOVIE: DESCRIPTION
                        Text(movie.description)
                            .foregroundColor(Color.white)
                            .font(.footnote)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 16)
                            .frame(maxWidth:480)
                        // BUTTON: START
                        NavigationLink(destination: WaitingRoomView()){
                            JoinButtonView()
                        }
                        
                    } //: VSTACK
                }//: ZSTACK
            }//: ZSTACK BACKGROUND
            .onAppear{
                withAnimation(.easeInOut(duration:0.5)){
                    isAnimating = true
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxHeight:.infinity, alignment:.center)
            .background(LinearGradient(gradient: Gradient(colors: movie.gradientColors), startPoint: .top,
                                       endPoint: .bottom))
            .cornerRadius(20)
            .padding(.horizontal, 10)
            .navigationBarHidden(true)
            
    }
}

// MARK: - PREVIEW
struct MovieCardView_Previews: PreviewProvider {
    static var previews: some View {
        MovieCardView(movie: moviesData[0])
            .previewLayout(.fixed(width: 320, height: 640))

    }
}
