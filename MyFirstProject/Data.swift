//
//  Data.swift
//  FoundationApp
//
//  Created by Giovanni Monaco on 05/10/22.
//

import SwiftUI

class SharedData: ObservableObject {
    
    @Published var test = ["❤️", "🧡", "💛", "💚", "💙", "💜"]
    
    @Published var learners = [
        
        Learner(name: "Adriano", surname: "Prota", favouriteColor: .red, imageName:"san_nicola", description: "I'm Santa Clause, bit*h"),
        Learner(name: "Alessandro", surname: "Esposito Vulgo Gigante", favouriteColor: .black),
        Learner(name: "Alessandro", surname: "Pedato", favouriteColor: .black),
        Learner(name: "Alessandro", surname: "Ricci", favouriteColor: .black),
        Learner(name: "Alessia", surname: "Sieczak", favouriteColor: .purple),
        Learner(name: "Alessio", surname: "De Simone", favouriteColor: .black),
        Learner(name: "Angela", surname: "Sarnataro", favouriteColor: .black),
        Learner(name: "Annalisa", surname: "Librera", favouriteColor: .black),
        Learner(name: "Antimo", surname: "Cantiello", favouriteColor: .black),
        Learner(name: "Antonio", surname: "Bocchetti", favouriteColor: .black),
        Learner(name: "Antonio", surname: "D'alterio", favouriteColor: .black),
        Learner(name: "Antonio", surname: "Russo", favouriteColor: .black),
        Learner(name: "Aurora", surname: "Cepparulo", favouriteColor: .black),
        Learner(name: "Aurora", surname: "Maio", favouriteColor: .purple),
        Learner(name: "Carmine", surname: "Franzese", favouriteColor: .black),
        Learner(name: "Cesare", surname: "Longo", favouriteColor: .black),
        Learner(name: "Christian", surname: "Castellano", favouriteColor: .black),
        Learner(name: "Claudia Antonella", surname: "Esposito", favouriteColor: .black),
        Learner(name: "Cristina", surname: "Fidaleo", favouriteColor: .black),
        Learner(name: "Daniele", surname: "Fontana", favouriteColor: .black),
        Learner(name: "Davide", surname: "Castaldi", favouriteColor: .black),
        Learner(name: "Davide", surname: "Mazzola", favouriteColor: .black),
        Learner(name: "Davit", surname: "Danielia", favouriteColor: .black),
        Learner(name: "Emanuele", surname: "Cecere", favouriteColor: .black),
        Learner(name: "Fabrizio", surname: "Vitale", favouriteColor: .black),
        Learner(name: "Francesco", surname: "La Peruta", favouriteColor: .purple),
        Learner(name: "Gaia Francesca", surname: "Fioretti", favouriteColor: .black),
        Learner(name: "Gianluigi", surname: "Erra", favouriteColor: .black),
        Learner(name: "Giovanni", surname: "Scippo", favouriteColor: .black),
        Learner(name: "Giuseppe", surname: "Arena", favouriteColor: .black),
        Learner(name: "Giuseppe", surname: "Gatta", favouriteColor: .pink),
        Learner(name: "Isabella", surname: "Di Lorenzi", favouriteColor: .black),
        Learner(name: "Jwalin", surname: "Mehta", favouriteColor: .black),
        Learner(name: "Karan", surname: "Oroumchi", favouriteColor: .black),
        Learner(name: "Lorenzo", surname: "Spinosa", favouriteColor: .black),
        Learner(name: "Luigi", surname: "Donnino", favouriteColor: .black),
        Learner(name: "Marcello", surname: "Vestri", favouriteColor: .black),
        Learner(name: "Marco", surname: "Cesarulo", favouriteColor: .black),
        Learner(name: "Mariam", surname: "Maisuradze", favouriteColor: .black),
        Learner(name: "Marika", surname: "Sasso", favouriteColor: .black),
        Learner(name: "Mario Gabriele", surname: "Carofano", favouriteColor: .purple),
        Learner(name: "Marzia", surname: "Pirozzi", favouriteColor: .black),
        Learner(name: "Michela", surname: "D'Avino", favouriteColor: .black),
        Learner(name: "Michele", surname: "Valentino", favouriteColor: .black),
        Learner(name: "Mike", surname: "Fonseta", favouriteColor: .black),
        Learner(name: "Mohammed Adnan", surname: "Khan", favouriteColor: .black),
        Learner(name: "Nicholas", surname: "Ruggiero", favouriteColor: .black),
        Learner(name: "Pierluigi", surname: "Supino", favouriteColor: .black),
        Learner(name: "Renato", surname: "Duraccio", favouriteColor: .black),
        Learner(name: "Samira", surname: "Rasouliilkhechi", favouriteColor: .black),
        Learner(name: "Sara", surname: "Auditano", favouriteColor: .black),
        Learner(name: "Sara", surname: "Paliferi", favouriteColor: .black),
        Learner(name: "Serena", surname: "Savarese", favouriteColor: .black),
        Learner(name: "Simone", surname: "Buglione", favouriteColor: .black),
        Learner(name: "Sossio", surname: "Murolo", favouriteColor: .black),
        Learner(name: "Stefano", surname: "Violante", favouriteColor: .black),
        Learner(name: "Vincenzo", surname: "Altobelli", favouriteColor: .purple)
    ]
    
    @Published var teams = [
        Team(
            name: "Apple Squad",
            teamMates: [
                Learner(name: "Alessia", surname: "Sieczak", favouriteColor: .purple),
                Learner(name: "Aurora", surname: "Maio", favouriteColor: .purple),
                Learner(name: "Francesco", surname: "La Peruta", favouriteColor: .purple),
                Learner(name: "Mario Gabriele", surname: "Carofano", favouriteColor: .purple),
                Learner(name: "Vincenzo", surname: "Altobelli", favouriteColor: .purple)
            ],
            imageName: "apple_squad",
            favouriteColor: .purple,
            description: "An apple a day keeps bugs away!"
        ),
        Team(
            name: "Wine Team",
            teamMates: [
                Learner(name: "Giuseppe", surname: "Gatta", favouriteColor: .pink),
            ],
            favouriteColor: .pink
        )
    ]
    
}

var sharedData = SharedData()
