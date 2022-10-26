//
//  Model.swift
//  MyFirstProject
//
//  Created by Giovanni Monaco on 17/10/22.
//

import SwiftUI

struct Learner: Identifiable {
    var id = UUID()
    var name: String
    var surname: String
    var favouriteColor: Color
}
