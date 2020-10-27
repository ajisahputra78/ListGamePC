//
//  DetailViewController.swift
//  GamePC
//
//  Created by Aji Sahputra78 on 15/09/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var nameGame: UILabel!
    @IBOutlet weak var photoGame: UIImageView!
    @IBOutlet weak var descGame: UILabel!
    
    var game: Game?

    override func viewDidLoad()
        {
            super.viewDidLoad()
            if let result = game
                {
                    photoGame.image = result.photo
                    nameGame.text = result.name
                    descGame.text = result.description
                }
        }

}
