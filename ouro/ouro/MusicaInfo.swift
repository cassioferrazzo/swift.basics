//
//  musicaInfo.swift
//  ouro
//
//  Created by Student on 9/19/16.
//  Copyright © 2016 Cassio Ferrazzo. All rights reserved.
//

import Foundation

class MusicaInfo {
    
    let titulo: String
    let cantor: String
    let imagemAlbum: String
    let nomeAlbum: String
    
    init(titulo: String, cantor: String, imagemAlbum: String, nomeAlbum: String) {
        self.titulo = titulo
        self.cantor = cantor
        self.imagemAlbum = imagemAlbum
        self.nomeAlbum = nomeAlbum
    }
}