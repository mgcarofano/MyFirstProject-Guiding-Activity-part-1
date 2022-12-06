//
//  TeamView.swift
//  MyFirstProject
//
//  Created by MARIO GABRIELE CAROFANO on 06/12/22.
//

import Foundation
import SwiftUI

struct TeamDetailView: View {
    @ObservedObject var myData = sharedData
    var team: Team
    
    var body: some View{
        NavigationStack {
            ZStack{
                
                team.favouriteColor
                    .opacity(0.35)
                    .ignoresSafeArea()
                
                VStack{
                    Image(team.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300, height: 300)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                        .padding()
                    
                    Text(team.name)
                        .font(.title).bold()
                    
                    .foregroundColor(team.favouriteColor)
                    
                    Text(team.description)
                        .font(.body)
                    
                    List{
                        ForEach(team.teamMates) {
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
                    .scrollContentBackground(.hidden)
                    .shadow(radius: 10)
                }
            }
        }
    }
}

struct TeamDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TeamDetailView(team: sharedData.teams[5])
    }
}

// Riferimenti
// https://sarunw.com/posts/swiftui-list-background-color/#how-to-hide-swiftui-list-background
