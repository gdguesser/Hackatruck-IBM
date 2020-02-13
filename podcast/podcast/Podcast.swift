//
//  Podcast.swift
//  podcast
//
//  Created by Student on 06/02/20.
//  Copyright © 2020 Student. All rights reserved.
//

import Foundation


class Podcast {
    
    let nome: String
    let episode: String
    let foto: String
    
    init(nome: String, episode: String, foto: String){
        self.nome = nome
        self.episode = episode
        self.foto = foto
    }
}

class PodcastDAO {
    
    static func getList() -> [Podcast]{
        
        return [
            Podcast(nome: "99vidas", episode: "No unplayed Episodes", foto: "99vidas"),
            Podcast(nome: "Canal42", episode: "No unplayed Episodes", foto: "Canal42"),
            Podcast(nome: "MM", episode: "No unplayed Episodes", foto: "mm"),
            Podcast(nome: "Não Ouvo", episode: "No unplayed Episodes", foto: "naoouvo"),
            Podcast(nome: "Nerdcast", episode: "No unplayed Episodes", foto: "nerdcast"),
            Podcast(nome: "OMPDB", episode: "No unplayed Episodes", foto: "ompdb"),
            Podcast(nome: "Rapadura Cast", episode: "No unplayed Episodes", foto: "rapaduracast"),
            Podcast(nome: "Reloading", episode: "No unplayed Episodes", foto: "reloading"),
            Podcast(nome: "Sciast", episode: "No unplayed Episodes", foto: "sciast")
     
        ]
    }
    
}
