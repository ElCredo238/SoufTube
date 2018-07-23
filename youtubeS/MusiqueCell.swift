//
//  MusiqueCell.swift
//  youtubeS
//
//  Created by soufiane on 21/07/18.
//  Copyright © 2018 ES. All rights reserved.
//

import UIKit

class MusiqueCell: UITableViewCell {

    @IBOutlet weak var miniature: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    var chanson: Chanson!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    func creeCell(chanson: Chanson) {
        self.chanson = chanson
        
        let attributed = NSMutableAttributedString(string: self.chanson.title, attributes: [.font: UIFont.boldSystemFont(ofSize: 20), .foregroundColor: UIColor.black])
        let secondLine = NSMutableAttributedString(string: "\n" + self.chanson.artist, attributes: [.font: UIFont.italicSystemFont(ofSize: 20), .foregroundColor: UIColor.lightGray])
        attributed.append(secondLine)
        title.attributedText = attributed
    
    }
    
}
