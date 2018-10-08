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
    var headerText : String
    var footerText: String
    
    static let animals = [ Animal(image:"ahaha",name:"Aha Ha",sciName:"Aha Ha",animClass:"Insecta",size:"0.1 g", headerText:"This is an Aha Ha", footerText:"This is an Aha Ha foot"), Animal(image:"Animal",name:"Animal",sciName:"Muppettis Drummercus",animClass:"Muppet",size:"15 kg", headerText:"This is Animal", footerText:"This is his foot"), Animal(image:"saiga",name:"Saiga Antellope",sciName:"Saiga Tatarica",animClass:"Mammalia",size:"26-29 kg", headerText:"This is a weird antelope", footerText:"This is anan antelope foot"), Animal(image:"wombat",name:"Wombat",sciName:"Vombatus ursinus tasmaniensis",animClass:"Mammalia",size:"20-35 kg", headerText:"This is an wombo", footerText:"This is batman's foots"), Animal(image: "pacu", name: "Pacu Fish", sciName: "Colossoma macropomum", animClass: "Actinopterygii", size: "30-40 kg", headerText: "This is a Pacu Fish", footerText: "This is a pacu fish footer!") ]
    
    init(image:String, name:String, sciName:String, animClass:String, size:String, headerText:String, footerText:String) {
        self.image=image
        self.name=name
        self.sciName=sciName
        self.animClass=animClass
        self.size=size
        self.headerText=headerText
        self.footerText=footerText
    }
}
