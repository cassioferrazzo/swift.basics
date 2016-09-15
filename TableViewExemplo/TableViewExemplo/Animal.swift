//
//  Animal.swift
//  TableViewExemplo
//
//  Created by Student on 9/15/16.
//  Copyright © 2016 Cassio Ferrazzo. All rights reserved.
//

import Foundation

class Animal{
    
    let nome: String
    let fotoDoAnimal: String
    var peso: Double
    
    init (nome: String, fotoDoAnimal: String, peso: Double){
        self.nome = nome
        self.fotoDoAnimal = fotoDoAnimal
        self.peso = peso
    }
}