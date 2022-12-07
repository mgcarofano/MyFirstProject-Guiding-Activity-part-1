//
//  NewLearnerBottomSheet.swift
//  MyFirstProject
//
//  Created by MARIO GABRIELE CAROFANO on 07/12/22.
//

import Foundation
import SwiftUI

struct NewLearnerBottomSheet: View {
    @ObservedObject var myData = sharedData
    
    @State var newLearnerName: String = ""
    @State var newLearnerSurname: String = ""
    @State var newLearnerDescription: String = ""
    @State var newLearnerFavouriteColor: Color = .black
    @Binding var showingNewLearner : Bool
    
    var body: some View{
        NavigationStack{
            Form {
                Section(header: Text("NAME")) {
                    TextField("learner's name", text: $newLearnerName)
                }
                Section(header: Text("SURNAME")) {
                    TextField("learner's surname", text: $newLearnerSurname)
                }
                Section(header: Text("DESCRIPTION")) {
                    TextField("learner's description", text: $newLearnerDescription)
                }
                ColorPicker("Favourite Color", selection: $newLearnerFavouriteColor)
            }
            .navigationTitle("New Learner")
            .toolbar {
                ToolbarItem {
                    Button("Add") {
                        if (!newLearnerName.isEmpty) && (!newLearnerSurname.isEmpty) {
                            if newLearnerDescription.isEmpty {newLearnerDescription = "No description provided"}
                            sharedData.learners.append(
                                Learner(
                                    name: newLearnerName,
                                    surname: newLearnerSurname,
                                    favouriteColor: newLearnerFavouriteColor,
                                    description: newLearnerDescription
                                )
                            )
                            showingNewLearner.toggle()
                        }
                    }
                }
            }
        }
    }
}

struct NewLearnerBottomSheet_Previews: PreviewProvider {
    static var previews: some View {
        NewLearnerBottomSheet(showingNewLearner: .constant(true))
    }
}

// Riferimenti
