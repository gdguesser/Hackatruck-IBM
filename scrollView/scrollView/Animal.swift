//
//  Animal.swift
//  scrollView
//
//  Created by Student on 06/02/20.
//  Copyright © 2020 Student. All rights reserved.
//

import Foundation


class Animal {
    
    let nome: String
    let especia: String
    let foto: String
    
    init (nome: String, especie: String, foto: String) {
        self.nome = nome
        self.especia = especie
        self.foto = foto
    }
    
}

class AnimalDAO {
    
    static func getList() -> [Animal]{
        
        return [
            Animal(nome: "Snoop", especie: "Cachorro", foto: "cachorro"),
            Animal(nome: "Donald", especie: "Pato", foto: "pato"),
            Animal(nome: "Jack", especie: "Canguru", foto: "canguru"),
            Animal(nome: "Zé", especie: "Papagaio", foto: "papagaio"),
            Animal(nome: "Camel", especie: "Camelo", foto: "camelo")
        ]
        
    }
    
}
