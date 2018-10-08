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
    
    static let animals = [ Animal(image:"ahaha",name:"Aha Ha",sciName:"Aha Ha",animClass:"Insecta",size:"0.1 g"), Animal(image:"Animal",name:"Animal",sciName:"Muppettis Drummercus",animClass:"Muppet",size:"15 kg"), Animal(image:"saiga",name:"Saiga Antellope",sciName:"Saiga Tatarica",animClass:"Mammalia",size:"26-29 kg"), Animal(image:"wombat",name:"Wombat",sciName:"Vombatus ursinus tasmaniensis",animClass:"Mammalia",size:"20-35 kg") ]
    
    init(image:String, name:String, sciName:String, animClass:String, size:String) {
        self.image=image
        self.name=name
        self.sciName=sciName
        self.animClass=animClass
        self.size=size
    }
}
