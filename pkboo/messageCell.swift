//
//  messageCell.swift
//  pkboo
//
//  Created by Brett on 02/02/16.
//  Copyright © 2016 Brett. All rights reserved.
//

import UIKit

class messageCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var sender: UILabel!
    @IBOutlet weak var preview: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
