//
//  DetalhesMusicaViewController.swift
//  ouro
//
//  Created by Student on 9/19/16.
//  Copyright © 2016 Cassio Ferrazzo. All rights reserved.
//

import UIKit

class DetalhesMusicaViewController: UIViewController {

    @IBOutlet weak var imagem: UIImageView!
    @IBOutlet weak var lbBanda: UILabel!
    @IBOutlet weak var lbMusica: UILabel!
    @IBOutlet weak var lbAlbum: UILabel!
    
    var musica: MusicaInfo? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let musica = self.musica {
        
            self.imagem.image = UIImage(named: musica.imagemAlbum)
            self.lbMusica.text = musica.titulo
            self.lbAlbum.text = musica.nomeAlbum
            self.lbBanda.text = musica.cantor
        }

        
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
