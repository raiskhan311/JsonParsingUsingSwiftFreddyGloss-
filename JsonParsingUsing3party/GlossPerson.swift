//
//  GlossPerson.swift
//  JsonParsingUsing3party
//
//  Created by mac on 12/07/17.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation
import Gloss

struct GlossPerson {
    let name: String
    let location:String
    let companyname:String
    
    
    init? (data:Data){
        
        let json = try! JSONSerialization.jsonObject(with: data, options: []) as! [[String:Any]]
        let user = json[2]
        
        self.name = "name" <~~ user ??  "name error"
        let lat = "address.geo.lat" <~~ user ?? "lat error"
        let long = "address.geo.lng"  <~~ user ?? "long error"
        self.location = "Lat: \(lat), Long: \(long)"
        let companyName = "company.name" <~~ user ?? "company name error"
        self.companyname = companyName
    }
}
