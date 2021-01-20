//
//  MovieModel.swift
//  MovieApp
//
//  Created by Alper Kavusturan on 17/01/2021.
//

import SwiftUI

struct Movie: Identifiable {
    var id = UUID()
    var title : String
    var poster : String
    var year : Int
    var mood : String
    var description : String
    var imdb : Double
    var gradientColors : [Color]
}
