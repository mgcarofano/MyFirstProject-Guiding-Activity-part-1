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
    @State private var showingNewLearner = false
    
    var nameSearchResults: [Learner] {
        if searchable.isEmpty {
            return myData.learners
        } else {
            return myData.learners.filter {
                $0.name.contains(searchable)
            }
        }
    }
    
    var surnameSearchResults: [Learner] {
        if searchable.isEmpty {
            return myData.learners
        } else {
            return myData.learners.filter {
                $0.surname.contains(searchable)
            }
        }
    }
    
    func deletingLearner (at offsets: IndexSet) {
        myData.learners.remove(atOffsets: offsets)
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(nameSearchResults + surnameSearchResults) {
                    learner in NavigationLink(destination: LearnedDetailView(learner: learner)){
                
                        HStack {
                            Image(systemName: "person.fill")
                                .foregroundColor(learner.favouriteColor)
                            Text(learner.name).font(.body).bold()
                            Text(learner.surname)
                            
                        }
                        
                    }
                }
                .onDelete(perform: deletingLearner)
            }
            .toolbar {
                ToolbarItem {
                    Button {
                        showingNewLearner.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .searchable(text: $searchable, placement: /*@START_MENU_TOKEN@*/.automatic/*@END_MENU_TOKEN@*/)
            .navigationTitle("Learners")
            .sheet(isPresented: $showingNewLearner) {
                NewLearnerBottomSheet(showingNewLearner: $showingNewLearner)
            }
            .shadow(radius: 10)
        }
    }
}

struct LearnersListView_Previews: PreviewProvider {
    static var previews: some View {
        LearnersListView()
    }
}

// RIFERIMENTI
// https://stackoverflow.com/questions/25146382/how-do-i-concatenate-or-merge-arrays-in-swift
// https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-a-toolbar-and-add-buttons-to-it
// https://www.hackingwithswift.com/quick-start/swiftui/how-to-display-a-bottom-sheet
