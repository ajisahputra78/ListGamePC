//
//  GameTableViewCell.swift
//  GamePC
//
//  Created by Aji Sahputra78 on 15/09/20.
//

import UIKit

class GameTableViewCell: UITableViewCell
    {
        @IBOutlet weak var photoGame: UIImageView!
        @IBOutlet weak var nameGame: UILabel!
        @IBOutlet weak var descGame: UILabel!
    
        override func awakeFromNib()
        {
            super.awakeFromNib()
        // Initialization code
        }

        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        }
    
    }
