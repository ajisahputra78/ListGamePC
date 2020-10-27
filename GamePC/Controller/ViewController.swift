//
//  ViewController.swift
//  GamePC
//
//  Created by Aji Sahputra78 on 15/09/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class ViewController: UIViewController
    {
    @IBOutlet weak var GameTableView: UITableView!
    
    
        override func viewDidLoad()
            {
                
                super.viewDidLoad()
                self.navigationItem.title = "Game PC Terpopuler 2020"
                GameTableView.dataSource = self
                GameTableView.delegate = self
                GameTableView.register(UINib(nibName: "GameTableViewCell", bundle: nil),forCellReuseIdentifier:"GameCell")
                
            }

        }

        extension ViewController: UITableViewDataSource
            {

            func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
            {
                return games.count
            }

            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
            {
            
                if let cell = tableView.dequeueReusableCell(withIdentifier: "GameCell", for: indexPath) as? GameTableViewCell
                    
                {
            
                        let game = games[indexPath.row]
                        cell.nameGame.text = game.name
                        cell.descGame.text = game.description
                        cell.photoGame.image = game.photo
                        cell.photoGame.layer.cornerRadius = cell.photoGame.frame.height / 2
                        cell.photoGame.clipsToBounds = true
                        return cell
                    
                } else
                    {
                        return UITableViewCell()
                    }
            
                }

        }

            extension ViewController: UITableViewDelegate
                {

                    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
                        {
                
                            let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)
                            detail.game = games[indexPath.row]
                            self.navigationController?.pushViewController(detail, animated: true)
                
                        }
                }



