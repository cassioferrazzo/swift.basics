//
//  ContatosTableViewController.swift
//  AulaTableView
//
//  Created by Tiago - Eldorado on 8/8/16.
//  Copyright © 2016 Tiago - Eldorado. All rights reserved.
//

import UIKit

class ContatosTableViewController: UITableViewController {

    // 1) Inicializando o nosso array de filmes
    //      - A classe Filme está definida no arquivo Filme.swift
    var contatos:[Contato] = [Contato]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 2) Criamos 4 contatos
        let contato1 = Contato(nome: "Tiago, O Sábio", telefone: "(12) 7812-3436", foto: "tiago")
        let contato2 = Contato(nome: "Pedro, O Engraçado", telefone: "(34) 5634-7825", foto: "pedro")
        let contato3 = Contato(nome: "Rafael, O Teimoso", telefone: "(56) 3456-9891", foto: "rafael")
        let contato4 = Contato(nome: "João, O Valente", telefone: "(78) 1278-9001", foto: "joao")
        
        // 3) Adicionamos os contatos no array de contatos
        self.contatos.append(contato1)
        self.contatos.append(contato2)
        self.contatos.append(contato3)
        self.contatos.append(contato4)
    }

    // MARK: - Table view data source

    // 4) Função que define o numero de SEÇÕES que nossa tableview tem
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Definimos que a quantidade de filmes que o array de filmes tem
        // será a quantidade de linhas na nossa tabela
        return 1
    }

    // 5) Função que diz quantas linhas nossa table view tem
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.contatos.count
    }

    // 6) Função para popular as células da tabela com conteúdo
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Pegamos a célula
        // - Atenção no IDENTIFIER ("filmeIdentifier"), tem que associar ele na célula no storyboard
        // - Faça a conversão para o tipo de célula que você precisa (as! FilmeTableViewCell)
        let cell = tableView.dequeueReusableCellWithIdentifier("contatoIdentifier", forIndexPath: indexPath) as! ContatoTableViewCell

        // Aqui acessamos os componentes da célula e modificamos seu valor
        // Usamos o indexPath.row para saber em que linha nós estamos
        cell.contatoNome.text = self.contatos[indexPath.row].nome
        cell.contatoTelefone.text = self.contatos[indexPath.row].telefone
        
        cell.contatoFoto.image = UIImage(named: self.contatos[indexPath.row].foto)

        return cell
    }
}
