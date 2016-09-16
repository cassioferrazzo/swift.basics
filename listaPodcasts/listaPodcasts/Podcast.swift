//
//  Podcast.swift
//  listaPodcasts
//
//  Created by Student on 9/15/16.
//  Copyright © 2016 Cassio Ferrazzo. All rights reserved.
//

import Foundation


class Podcast{
    
    let nomeImagem: String
    let tituloDoPodcast: String
    let nomeDoPodcast: String
    
    init(nomeImagem:String, tituloDoPodcast: String, nomeDoPodcast: String){
        
        self.nomeImagem = nomeImagem
        self.tituloDoPodcast = tituloDoPodcast
        self.nomeDoPodcast = nomeDoPodcast
    }
}