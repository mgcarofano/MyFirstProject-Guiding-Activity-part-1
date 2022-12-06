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
        ZStack{
            
            team.teamMates[0].favouriteColor
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
                
                .foregroundColor(team.teamMates[0].favouriteColor)
                
                Text(team.description)
                    .font(.body)
            }
        }
    }
}

struct TeamDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TeamDetailView(team: sharedData.teams[0])
    }
}
