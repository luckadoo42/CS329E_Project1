//
//  File.swift
//  group3_assignment5
//
//  Created by Evan Shrestha on 10/4/18.
//  Copyright © 2018 Group 3. All rights reserved.
//

import Foundation

class Animal {
    var image : String
    var name : String
    var sciName : String
    var animClass : String
    var size : String
    
    init(image:String, name:String, sciName:String, animClass:String, size:String) {
        self.image=image
        self.name=name
        self.sciName=sciName
        self.animClass=animClass
        self.size=size
    }
}
