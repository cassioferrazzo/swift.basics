//
//  Contato.swift
//  AulaTableView
//
//  Created by Tiago - Eldorado on 8/8/16.
//  Copyright © 2016 Tiago - Eldorado. All rights reserved.
//

import Foundation

// 1) Classe que define um Contato
class Contato {
    // 2) Properties: são os atributos da classe
    let nome: String
    let telefone: String
    let foto: String
    
    // 3) Método de inicalização da classe
    // Com ele que instanciamos novos objetos
    init(nome: String, telefone: String, foto: String) {
        self.nome = nome
        self.telefone = telefone
        self.foto = foto
    }
    
}