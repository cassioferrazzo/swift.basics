//
//  MusicaTableViewCell.swift
//  ouro
//
//  Created by Student on 9/19/16.
//  Copyright © 2016 Cassio Ferrazzo. All rights reserved.
//

import UIKit

class MusicaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lbBanda: UILabel!
    @IBOutlet weak var lbMusica: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
