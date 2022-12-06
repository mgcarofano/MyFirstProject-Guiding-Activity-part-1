//
//  MyFirstProjectApp.swift
//  MyFirstProject
//
//  Created by Giovanni Monaco on 05/10/22.
//  Edited by MARIO GABRIELE CAROFANO.
//

import SwiftUI

@main
struct MyFirstProjectApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                LearnersListView().tabItem {
                    Label("Learners", systemImage: "person.fill")
                }
                TeamListView().tabItem {
                    Label("Teams", systemImage: "person.3.fill")
                }
            }
        }
    }
}

// Riferimenti
// https://www.hackingwithswift.com/quick-start/swiftui/adding-tabview-and-tabitem
