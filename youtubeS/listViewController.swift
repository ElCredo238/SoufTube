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
    
    var chansons = [Chanson]()
    
    let idCell = "chansonCell"
    
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
        let chanson = chansons[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: idCell) as? MusiqueCell {
            cell.creeCell(chanson: chanson)
            return cell
        }
            
            return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
   
    func addMusique() {
        chansons = [Chanson]()
        let cool = Chanson(artist: "omarion", title: "distance", code: "vsrhIUmPf")
        chansons.append(cool)
        let bien = Chanson(artist: "dadju", title: "c'est pas bon", code: "oGH-_2qxaxE")
        chansons.append(bien)
        let rap = Chanson(artist: "soolking", title: "guerilla", code: "YLIWleB0g78")
        chansons.append(rap)
        let arab = Chanson(artist: "saad", title: "ghazali", code: "lhnmVSB-Rxc")
        chansons.append(arab)
        let mixt = Chanson(artist: "maitre gims", title: "migana", code: "NtccSFkAhrM")
        chansons.append(mixt)
        tabelView.reloadData()



    }










}
