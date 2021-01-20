//
//  JoinButtonView.swift
//  MovieApp
//
//  Created by Alper Kavusturan on 15/01/2021.
//

import SwiftUI

struct JoinButtonView: View {
    var body: some View {
        HStack(spacing: 8){
            Text("Join")
            Image(systemName: "arrow.right.circle")
                .imageScale(.large)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(
            Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        .accentColor(Color.white)    }
}

struct JoinButtonView_Previews: PreviewProvider {
    static var previews: some View {
        JoinButtonView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .previewLayout(.sizeThatFits)
    }
}
