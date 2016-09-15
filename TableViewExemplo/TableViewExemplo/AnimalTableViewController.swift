//
//  AnimalTableViewController.swift
//  TableViewExemplo
//
//  Created by Student on 9/15/16.
//  Copyright © 2016 Cassio Ferrazzo. All rights reserved.
//

import UIKit

class AnimalTableViewController: UITableViewController {

    var animais: [Animal] = [Animal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let animal1 = Animal(nome: "Cachorro", fotoDoAnimal: "cachorro", peso: 5.9)
        let animal2 = Animal(nome: "Dromedario", fotoDoAnimal: "dromedario", peso: 30.1)
        let animal3 = Animal(nome: "Periquito", fotoDoAnimal: "periquito", peso: 0.39)
        let animal4 = Animal(nome: "Canguru Albino", fotoDoAnimal: "canguru", peso: 9.7)
        let animal5 = Animal(nome: "Cisne Negro", fotoDoAnimal: "cisne", peso: 5.1)
        
        self.animais.append(animal1)
        self.animais.append(animal2)
        self.animais.append(animal3)
        self.animais.append(animal4)
        self.animais.append(animal5)
        
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
        return self.animais.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("animalIdentifier", forIndexPath: indexPath) as! AnimalTableViewCell
        let animal = self.animais[indexPath.row]
        cell.nomeDoAnimal.text = animal.nome
        cell.pesoDoAnimal.text = "\(animal.peso)"
        cell.animalFoto.image  = UIImage(named: animal.fotoDoAnimal)

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
