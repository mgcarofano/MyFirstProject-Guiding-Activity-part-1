//
//  TeamsView.swift
//  MyFirstProject
//
//  Created by MARIO GABRIELE CAROFANO on 06/12/22.
//

import Foundation
import SwiftUI

struct TeamListView: View {
    
    @ObservedObject var myData = sharedData
    @State private var searchable = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(myData.teams) {
                    team in NavigationLink(destination: TeamDetailView(team: team)){
                        
                        ZStack (alignment: .bottomLeading) {
                            
                            Image(team.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .shadow(radius: 10)
                                .frame(height: 200)
                            
                            Rectangle().fill(
                                LinearGradient(
                                    colors: [
                                        .clear,
                                        team.favouriteColor.opacity(0.8)
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                            .frame(height: 200)
                            
                            VStack (alignment: .leading){
                                
                                Text(team.name).font(.title).bold().foregroundColor(.white)
                    
                                ForEach(team.teamMates) {
                                    teamMate in HStack {
                                        Text(teamMate.name).font(.body).bold()
                                        Text(teamMate.surname)
                                    }
                                }
                                .foregroundColor(.white)
                            }
                            .padding()
                        }
                        .cornerRadius(15.0)
                        .padding()
                    }
                }
                .searchable(text: $searchable, placement: /*@START_MENU_TOKEN@*/.automatic/*@END_MENU_TOKEN@*/)
            .navigationTitle("Teams")
            }
        }
    }
}

struct TeamListView_Previews: PreviewProvider {
    static var previews: some View {
        TeamListView()
    }
}
