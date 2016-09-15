//
//  ViewController.swift
//  imc
//
//  Created by Student on 9/14/16.
//  Copyright © 2016 Cassio Ferrazzo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbResultado: UILabel!
    @IBOutlet weak var tfPeso: UITextField!
    @IBOutlet weak var tfAltura: UITextField!

    @IBAction func calcularIMC(sender: AnyObject) {
        
        let altura = Double(self.tfAltura.text!)!
        let peso = Double(self.tfPeso.text!)!
        
        let IMC = peso/(altura*altura)
        
        self.lbResultado.text = String(format: "%.2f", IMC)
        
    }

}

