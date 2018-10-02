//
//  CustomTableViewCell.swift
//  group15_assignment5
//
//  Created by Cathy Li on 10/2/18.
//  Copyright © 2018 CS329E. All rights reserved.
//

import UIKit

class ImageNameTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
