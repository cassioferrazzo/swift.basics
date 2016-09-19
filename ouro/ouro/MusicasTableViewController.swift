//
//  MusicasTableViewController.swift
//  ouro
//
//  Created by Student on 9/19/16.
//  Copyright © 2016 Cassio Ferrazzo. All rights reserved.
//

import UIKit

class MusicasTableViewController: UITableViewController {

    var musicas: [MusicaInfo] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        musicas.append(MusicaInfo(titulo: "Back in Black", cantor: "AC/DC", imagemAlbum: "backinblack", nomeAlbum: "Back in Black"))
        musicas.append(MusicaInfo(titulo: "Frantic", cantor: "Metallica", imagemAlbum: "StAnger", nomeAlbum: "St. Anger"))
        musicas.append(MusicaInfo(titulo: "Black Heart Inertia", cantor: "Incubus", imagemAlbum: "MonumentsMelodies", nomeAlbum: "Monuments & Melodies"))
        musicas.append(MusicaInfo(titulo: "Aonde quer chegar", cantor: "Moptop", imagemAlbum: "ComoSeComportar", nomeAlbum: "Como Se Comportar"))
        musicas.append(MusicaInfo(titulo: "Primeiros Erros (Chove)", cantor: "Kiko Zambianchi", imagemAlbum: "Zambianchi", nomeAlbum: "Série Retratos: Kiko Zambianchi"))
        musicas.append(MusicaInfo(titulo: "912 Passos", cantor: "Dead Fish", imagemAlbum: "Vitoria", nomeAlbum: "Vitória!"))
        musicas.append(MusicaInfo(titulo: "Hells Bells", cantor: "AC/DC", imagemAlbum: "backinblack", nomeAlbum: "Back in Black"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.musicas.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("musicaCell", forIndexPath: indexPath) as! MusicaTableViewCell
        
        cell.lbBanda.text = self.musicas[indexPath.row].cantor
        cell.lbMusica.text = self.musicas[indexPath.row].titulo

        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "detalhesMusica" {
            
            if let viewDetalhes = segue.destinationViewController  as? DetalhesMusicaViewController {
                
                if let index = self.tableView.indexPathForSelectedRow {
                
                    viewDetalhes.musica = self.musicas[index.row]
                }
            }
            
        }
        
    }

}
