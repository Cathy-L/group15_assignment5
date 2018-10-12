//
//  GalleryCollectionViewCell.swift
//  group15_assignment5
//
//  Created by Cathy Li on 10/12/18.
//  Copyright © 2018 CS329E. All rights reserved.
//

import UIKit

class GalleryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var caption: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(with model: GalleryItem) {
        image.image = model.image
        caption.text = model.caption
    }
}
