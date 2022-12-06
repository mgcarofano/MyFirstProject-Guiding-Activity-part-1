//
//  LearnersListView.swift
//  MyFirstProject
//
//  Created by Giovanni Monaco on 17/10/22.
//  Edited by MARIO GABRIELE CAROFANO.
//

import SwiftUI

struct LearnersListView: View {
    
    @ObservedObject var myData = sharedData
    @State private var searchable = ""
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(myData.learners) {
                    learner in NavigationLink(destination: LearnedDetailView(learner: learner)){
                        
                        HStack {
                            Image(systemName: "person.fill")
                                .foregroundColor(learner.favouriteColor)
                            Text(learner.name).font(.body).bold()
                            Text(learner.surname)
                            
                        }
                    }
                }
            }
            .searchable(text: $searchable, placement: /*@START_MENU_TOKEN@*/.automatic/*@END_MENU_TOKEN@*/)
            .navigationTitle("Learners")
        }
    }
}

struct LearnersListView_Previews: PreviewProvider {
    static var previews: some View {
        LearnersListView()
    }
}
