//
//  InfoTableViewCell.swift
//  group15_assignment5
//
//  Created by Cathy Li on 10/2/18.
//  Copyright © 2018 CS329E. All rights reserved.
//

import UIKit

class InfoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var scientificNameLabel: UILabel!
    @IBOutlet weak var classLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
