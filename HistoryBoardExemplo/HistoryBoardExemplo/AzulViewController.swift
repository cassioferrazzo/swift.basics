//
//  AzulViewController.swift
//  HistoryBoardExemplo
//
//  Created by Student on 9/16/16.
//  Copyright © 2016 Cassio Ferrazzo. All rights reserved.
//

import UIKit

class AzulViewController: UIViewController {

    @IBOutlet weak var CorTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "navegarSegue" {
            if let viewCorIndefinida = segue.destinationViewController as? CorIndefinidaViewController{
                
                //isso não funciona porque não é possível acessar outlets de outra view controller
                //viewCorIndefinida.corLabel.text = self.CorTextField.text
                viewCorIndefinida.cor = self.CorTextField.text
            }
        }
        
    }
    

}
