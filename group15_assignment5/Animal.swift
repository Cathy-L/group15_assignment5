//
//  Animal.swift
//  group15_assignment5
//
//  Created by Cathy Li on 10/2/18.
//  Copyright © 2018 CS329E. All rights reserved.
//

import Foundation

class Animal {
    var name:String
    var scientificName:String
    var animalClass:String
    var size:Float
    var image:String
    
    init (name:String, scientificName:String, animalClass:String, size:Float, image:String) {
        self.name = name
        self.scientificName = scientificName
        self.animalClass = animalClass
        self.size = size
        self.image = image
    }
    
}
