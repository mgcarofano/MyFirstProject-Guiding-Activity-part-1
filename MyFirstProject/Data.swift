//
//  Data.swift
//  FoundationApp
//
//  Created by Giovanni Monaco on 05/10/22.
//  Edited by MARIO GABRIELE CAROFANO.
//

import SwiftUI

class SharedData: ObservableObject {
    
    @Published var learners = [
        
        Learner(name: "Adriano", surname: "Prota", favouriteColor: .red),
        Learner(name: "Alessandro", surname: "Esposito Vulgo Gigante", favouriteColor: .red),
        Learner(name: "Alessandro", surname: "Pedato", favouriteColor: .pink),
        Learner(name: "Alessandro", surname: "Ricci", favouriteColor: .pink),
        Learner(name: "Alessia", surname: "Sieczak", favouriteColor: .purple),
        Learner(name: "Alessio", surname: "De Simone", favouriteColor: .orange),
        Learner(name: "Angela", surname: "Sarnataro", favouriteColor: .yellow),
        Learner(name: "Annalisa", surname: "Librera", favouriteColor: .orange),
        Learner(name: "Antimo", surname: "Cantiello", favouriteColor: .yellow),
        Learner(name: "Antonio", surname: "Bocchetti", favouriteColor: .yellow),
        Learner(name: "Antonio", surname: "D'alterio", favouriteColor: .green),
        Learner(name: "Antonio", surname: "Russo"),
        Learner(name: "Aurora", surname: "Cepparulo", favouriteColor: .red),
        Learner(name: "Aurora", surname: "Maio", favouriteColor: .purple),
        Learner(name: "Carmine", surname: "Franzese", favouriteColor: .red),
        Learner(name: "Cesare", surname: "Longo", favouriteColor: .pink),
        Learner(name: "Christian", surname: "Castellano", favouriteColor: .yellow),
        Learner(name: "Claudia Antonella", surname: "Esposito", favouriteColor: .green),
        Learner(name: "Cristina", surname: "Fidaleo"),
        Learner(name: "Daniele", surname: "Fontana", favouriteColor: .orange),
        Learner(name: "Davide", surname: "Castaldi", favouriteColor: .orange),
        Learner(name: "Davide", surname: "Mazzola"),
        Learner(name: "Davit", surname: "Danielia", favouriteColor: .yellow),
        Learner(name: "Emanuele", surname: "Cecere", favouriteColor: .green),
        Learner(name: "Fabrizio", surname: "Vitale", favouriteColor: .red),
        Learner(name: "Francesco", surname: "La Peruta", favouriteColor: .purple),
        Learner(name: "Gaia Francesca", surname: "Fioretti", favouriteColor: .blue),
        Learner(name: "Gianluigi", surname: "Erra", favouriteColor: .gray),
        Learner(name: "Giovanni", surname: "Scippo", favouriteColor: .gray),
        Learner(name: "Giuseppe", surname: "Arena", favouriteColor: .red),
        Learner(name: "Giuseppe", surname: "Gatta", favouriteColor: .pink),
        Learner(name: "Isabella", surname: "Di Lorenzi"),
        Learner(name: "Jwalin", surname: "Mehta", favouriteColor: .green),
        Learner(name: "Karan", surname: "Oroumchi", favouriteColor: .yellow),
        Learner(name: "Lorenzo", surname: "Spinosa", favouriteColor: .pink),
        Learner(name: "Luigi", surname: "Donnino", favouriteColor: .teal),
        Learner(name: "Marcello", surname: "Vestri", favouriteColor: .gray),
        Learner(name: "Marco", surname: "Cesarulo", favouriteColor: .blue),
        Learner(name: "Mariam", surname: "Maisuradze"),
        Learner(name: "Marika", surname: "Sasso", favouriteColor: .gray),
        Learner(name: "Mario Gabriele", surname: "Carofano", favouriteColor: .purple),
        Learner(name: "Marzia", surname: "Pirozzi", favouriteColor: .teal),
        Learner(name: "Michela", surname: "D'Avino", favouriteColor: .pink),
        Learner(name: "Michele", surname: "Valentino", favouriteColor: .orange),
        Learner(name: "Mike", surname: "Fonseta"),
        Learner(name: "Mohammed Adnan", surname: "Khan", favouriteColor: .blue),
        Learner(name: "Nicholas", surname: "Ruggiero", favouriteColor: .gray),
        Learner(name: "Pierluigi", surname: "Supino", favouriteColor: .gray),
        Learner(name: "Renato", surname: "Duraccio", favouriteColor: .teal),
        Learner(name: "Samira", surname: "Rasouliilkhechi", favouriteColor: .orange),
        Learner(name: "Sara", surname: "Auditano", favouriteColor: .teal),
        Learner(name: "Sara", surname: "Paliferi", favouriteColor: .blue),
        Learner(name: "Serena", surname: "Savarese", favouriteColor: .teal),
        Learner(name: "Simone", surname: "Buglione", favouriteColor: .green),
        Learner(name: "Sossio", surname: "Murolo", favouriteColor: .blue),
        Learner(name: "Stefano", surname: "Violante", favouriteColor: .teal),
        Learner(name: "Vincenzo", surname: "Altobelli", favouriteColor: .purple)
    ]
    
    @Published var teams = [
        Team(
            name: "Red Republic 🌹",
            teamMates: [
                Learner(name: "Fabrizio", surname: "Vitale", favouriteColor: .red),
                Learner(name: "Carmine", surname: "Franzese", favouriteColor: .red),
                Learner(name: "Giuseppe", surname: "Arena", favouriteColor: .red),
                Learner(name: "Alessandro", surname: "Esposito Vulgo Gigante", favouriteColor: .red),
                Learner(name: "Aurora", surname: "Cepparulo", favouriteColor: .red),
                Learner(name: "Adriano", surname: "Prota", favouriteColor: .red)
            ],
            favouriteColor: .red
        ),
        Team(
            name: "Orange Team 🥕",
            teamMates: [
                Learner(name: "Michele", surname: "Valentino", favouriteColor: .orange),
                Learner(name: "Daniele", surname: "Fontana", favouriteColor: .orange),
                Learner(name: "Samira", surname: "Rasouliilkhechi", favouriteColor: .orange),
                Learner(name: "Davide", surname: "Castaldi", favouriteColor: .orange),
                Learner(name: "Alessio", surname: "De Simone", favouriteColor: .orange),
                Learner(name: "Annalisa", surname: "Librera", favouriteColor: .orange)
            ],
            favouriteColor: .orange
        ),
        Team(
            name: "Yellow Team 🌼",
            teamMates: [
                Learner(name: "Karan", surname: "Oroumchi", favouriteColor: .yellow),
                Learner(name: "Davit", surname: "Danielia", favouriteColor: .yellow),
                Learner(name: "Christian", surname: "Castellano", favouriteColor: .yellow),
                Learner(name: "Angela", surname: "Sarnataro", favouriteColor: .yellow),
                Learner(name: "Antonio", surname: "Bocchetti", favouriteColor: .yellow),
                Learner(name: "Antimo", surname: "Cantiello", favouriteColor: .yellow)
            ],
            favouriteColor: .yellow
        ),
        Team(
            name: "Green Team 🍀",
            teamMates: [
                Learner(name: "Claudia Antonella", surname: "Esposito", favouriteColor: .green),
                Learner(name: "Jwalin", surname: "Mehta", favouriteColor: .green),
                Learner(name: "Simone", surname: "Buglione", favouriteColor: .green),
                Learner(name: "Antonio", surname: "D'alterio", favouriteColor: .green),
                Learner(name: "Emanuele", surname: "Cecere", favouriteColor: .green)
            ],
            favouriteColor: .green
        ),
        Team(
            name: "Blue Team 🦋",
            teamMates: [
                Learner(name: "Sossio", surname: "Murolo", favouriteColor: .blue),
                Learner(name: "Sara", surname: "Paliferi", favouriteColor: .blue),
                Learner(name: "Marco", surname: "Cesarulo", favouriteColor: .blue),
                Learner(name: "Mohammed Adnan", surname: "Khan", favouriteColor: .blue),
                Learner(name: "Gaia Francesca", surname: "Fioretti", favouriteColor: .blue)
            ],
            favouriteColor: .blue
        ),
        Team(
            name: "Apple Squad 👾",
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
            name: "Wine Team 🌷",
            teamMates: [
                Learner(name: "Cesare", surname: "Longo", favouriteColor: .pink),
                Learner(name: "Michela", surname: "D'Avino", favouriteColor: .pink),
                Learner(name: "Lorenzo", surname: "Spinosa", favouriteColor: .pink),
                Learner(name: "Alessandro", surname: "Pedato", favouriteColor: .pink),
                Learner(name: "Alessandro", surname: "Ricci", favouriteColor: .pink),
                Learner(name: "Giuseppe", surname: "Gatta", favouriteColor: .pink)
            ],
            favouriteColor: .pink
        ),
        Team(
            name: "Panda Team 🐼",
            teamMates: [
                Learner(name: "Nicholas", surname: "Ruggiero", favouriteColor: .gray),
                Learner(name: "Gianluigi", surname: "Erra", favouriteColor: .gray),
                Learner(name: "Giovanni", surname: "Scippo", favouriteColor: .gray),
                Learner(name: "Pierluigi", surname: "Supino", favouriteColor: .gray),
                Learner(name: "Marika", surname: "Sasso", favouriteColor: .gray),
                Learner(name: "Marcello", surname: "Vestri", favouriteColor: .gray)
            ],
            favouriteColor: .gray
        ),
        Team(
            name: "Penguins 🐧",
            teamMates: [
                Learner(name: "Mariam", surname: "Maisuradze"),
                Learner(name: "Mike", surname: "Fonseta"),
                Learner(name: "Davide", surname: "Mazzola"),
                Learner(name: "Antonio", surname: "Russo"),
                Learner(name: "Isabella", surname: "Di Lorenzi"),
                Learner(name: "Cristina", surname: "Fidaleo")
            ]
        ),
        Team(
            name: "Teal Panthers 💎",
            teamMates: [
                Learner(name: "Stefano", surname: "Violante", favouriteColor: .teal),
                Learner(name: "Luigi", surname: "Donnino", favouriteColor: .teal),
                Learner(name: "Marzia", surname: "Pirozzi", favouriteColor: .teal),
                Learner(name: "Renato", surname: "Duraccio", favouriteColor: .teal),
                Learner(name: "Sara", surname: "Auditano", favouriteColor: .teal),
                Learner(name: "Serena", surname: "Savarese", favouriteColor: .teal)
            ],
            favouriteColor: .teal
        )
    ]
    
}

var sharedData = SharedData()
