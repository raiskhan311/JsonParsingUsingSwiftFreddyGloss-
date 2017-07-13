//
//  FreddyPerson.swift
//  JsonParsingUsing3party
//
//  Created by mac on 12/07/17.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation
import Freddy

struct FreddyPerson{
    let name: String
    let location:String
    let companyname:String
    
    init? (data:Data){
        
        do
        {
            let json        = try JSON(data:data)
            let name        = try json.getString(at: 1,"name")
            let lat         = try json.getString(at: 1,"address", "geo", "lat")
            let lang        = try json.getString(at: 1,"address", "geo", "lng")
            let companyname = try json.getString(at: 1,"company", "name")
            
            self.name = name
            self.location = "Lat: \(lat) Long: \(lang)"
            self.companyname = companyname

        }
        catch
        {
            print(error)
            return nil
        }
    }
}
