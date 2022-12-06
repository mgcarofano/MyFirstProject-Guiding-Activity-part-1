//
//  Model.swift
//  MyFirstProject
//
//  Created by Giovanni Monaco on 17/10/22.
//  Edited by MARIO GABRIELE CAROFANO.
//

import SwiftUI

struct Learner: Identifiable {
    var id = UUID()
    var name: String
    var surname: String
    var favouriteColor: Color = .black
    var imageName: String = "no_image"
    var description: String = "No description provided"
}

struct Team: Identifiable {
    var id = UUID()
    var name: String
    var teamMates: [Learner]
    var imageName: String = "no_image"
    var favouriteColor: Color = .black
    var description: String = "No description provided"
}
