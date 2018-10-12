//
//  GalleryItem.swift
//  group15_assignment5
//
//  Created by Cathy Li on 10/12/18.
//  Copyright © 2018 CS329E. All rights reserved.
//

import Foundation
import UIKit

struct Gallery {
    var caption: String
    var image: UIImage
    
    init(caption: String, image: UIImage){
        self.caption = caption
        self.image = image
    }
    init?(dictionary:[String:String]){
        guard let caption = dictionary["Caption"], let photo = dictionary["Photo"], let image = UIImage(named: photo)
        else {
            return nil
        }
        self.init(caption: caption, image: image)
    }
    static func allPhotos() -> [Gallery] {
        var photos = [Gallery]()
        guard let URL = Bundle.main.url(forResource: "GalleryItem", withExtension: "plist"),
            let photosFromPlist = NSArray(contentsOf: URL) as? [[String:String]] else {
                return photos
        }
        for dictionary in photosFromPlist {
            if let photo = Gallery(dictionary: dictionary) {
                photos.append(photo)
            }
        }
        return photos
    }
}
