//
//  WaitingRoomView.swift
//  MovieApp
//
//  Created by Alper Kavusturan on 19/01/2021.
//

import SwiftUI

struct WaitingRoomView: View {
    var body: some View {
        VStack{
            Spacer()
            CounterView()
            Spacer()
            Text("Your movie timeline will be available when the countdown is completed!")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)
                .frame(maxWidth:480)
            Spacer()
            Image("serial_killer")
                .scaledToFit()
                .shadow(color: Color(red:0, green:0, blue:0,
                        opacity:0.15), radius: 8, x: 6, y: 8)
            Text("Serial Killer")
                .foregroundColor(Color.black)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),
                        radius: 0.15, x: 2, y: 2)
            VStack{
                Text(String("1985"))
                    .foregroundColor(.gray)
                    .font(.subheadline)
                    .fontWeight(.light)
                HStack{
                    Text("Thriller")
                        .foregroundColor(.gray)
                        .font(.footnote)
                        .fontWeight(.ultraLight)
                    Text("-")
                        .foregroundColor(.gray)
                        .font(.caption)
                    Text("6.1")
                        .foregroundColor(.gray)
                        .font(.footnote)
                        .fontWeight(.ultraLight)
                }
                    
            }
            .multilineTextAlignment(.center)
            .navigationBarHidden(false)
        }
    }
    
}

struct WaitingRoomView_Previews: PreviewProvider {
    static var previews: some View {
        WaitingRoomView()
    }
}
