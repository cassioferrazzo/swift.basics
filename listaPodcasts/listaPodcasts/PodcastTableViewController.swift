//
//  PodcastTableViewController.swift
//  listaPodcasts
//
//  Created by Student on 9/15/16.
//  Copyright © 2016 Cassio Ferrazzo. All rights reserved.
//

import UIKit

class PodcastTableViewController: UITableViewController {

    let podcasts: [Podcast] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
       let podcast1 = Podcast(nomeImagem: "99vidas", tituloDoPodcast: "99vidas", nomeDoPodcast: String)
       let podcast2 = Podcast(nomeImagem: "canal42", tituloDoPodcast: "Canal42", nomeDoPodcast: <#T##String#>)
       let podcast3 = Podcast(nomeImagem: "mm", tituloDoPodcast: "MacMagazine no Ar", nomeDoPodcast: <#T##String#>)
       let podcast4 = Podcast(nomeImagem: "naoouvo", tituloDoPodcast: "Não ouvo", nomeDoPodcast: <#T##String#>)
       let podcast5 = Podcast(nomeImagem: "nerdcast", tituloDoPodcast: "NerdCast", nomeDoPodcast: <#T##String#>)
       let podcast6 = Podcast(nomeImagem: "ompdb", tituloDoPodcast: "O Melhor Podcast do Brasil", nomeDoPodcast: <#T##String#>)
       let podcast7 = Podcast(nomeImagem: "rapacuracast", tituloDoPodcast: "Rapadura Cast", nomeDoPodcast: <#T##String#>)
       let podcast8 = Podcast(nomeImagem: "reloading", tituloDoPodcast: "Reloading Cast", nomeDoPodcast: <#T##String#>)
       let podcast9 = Podcast(nomeImagem: "scicast", tituloDoPodcast: "Sci Cast", nomeDoPodcast: <#T##String#>)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! PodcastTableViewCell

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
