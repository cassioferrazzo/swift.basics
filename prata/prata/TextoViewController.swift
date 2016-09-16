//
//  TextoViewController.swift
//  prata
//
//  Created by Student on 9/16/16.
//  Copyright © 2016 Cassio Ferrazzo. All rights reserved.
//

import UIKit

class TextoViewController: UIViewController {

    @IBOutlet weak var lbTexto: UILabel!
    var texto: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        lbTexto.text = texto
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
