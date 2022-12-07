//
//  LearnerDetailView.swift
//  MyFirstProject
//
//  Created by MARIO GABRIELE CAROFANO on 06/12/22.
//

import Foundation
import SwiftUI

struct LearnedDetailView: View {
    @ObservedObject var myData = sharedData
    var learner: Learner
    
    var body: some View{
        ZStack{
            
            learner.favouriteColor
                .opacity(0.35)
                .ignoresSafeArea()
            
            VStack{
                Image(learner.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 300)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .padding()
                HStack{
                    Text(learner.name)
                        .font(.title).bold()
                    Text(learner.surname)
                        .font(.title).bold()
                }
                
                .foregroundColor(learner.favouriteColor)
                
                Text(learner.description)
                    .font(.body)
            }
        }
    }
}

struct LearnerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LearnedDetailView(learner: sharedData.learners[40])
    }
}
