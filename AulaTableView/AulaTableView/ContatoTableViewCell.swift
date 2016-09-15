//
//  ContatoTableViewCell.swift
//  AulaTableView
//
//  Created by Tiago - Eldorado on 8/8/16.
//  Copyright © 2016 Tiago - Eldorado. All rights reserved.
//

import UIKit

// 1) Modelo de uma célula da tableView (a table view cell)
// Temos que ligar essa classe lá na célula da interface,
// no Identity Inspector
class ContatoTableViewCell: UITableViewCell {
    // 2) Outlet que representa a imagem que vai aparecer na célula
    @IBOutlet weak var contatoFoto: UIImageView!
    
    // 3) Outlet para as labels na célula
    @IBOutlet weak var contatoNome: UILabel!
    @IBOutlet weak var contatoTelefone: UILabel!

}
