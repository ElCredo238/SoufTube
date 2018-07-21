//
//  listViewController.swift
//  youtubeS
//
//  Created by soufiane on 21/07/18.
//  Copyright © 2018 ES. All rights reserved.
//

import UIKit

class listViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tabelView: UITableView!
    
    var chansons = [Musique]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabelView.delegate = self
        tabelView.dataSource = self
        addMusique()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chansons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
   
    func addMusique() {
        chansons = [Musique]()
        let cool = Musique(artist: "omarion", title: "distance", code: "vsrhIUmPf")
        chansons.append(cool)
        let bien = Musique(artist: "dadju", title: "c'est pas bon", code: "oGH-_2qxaxE")
        chansons.append(bien)
        let rap = Musique(artist: "soolking", title: "guerilla", code: "YLIWleB0g78")
        chansons.append(rap)
        let arab = Musique(artist: "saad", title: "ghazali", code: "lhnmVSB-Rxc")
        chansons.append(arab)
        let mixt = Musique(artist: "maitre gims", title: "migana", code: "NtccSFkAhrM")
        chansons.append(mixt)
        tabelView.reloadData()



    }










}
