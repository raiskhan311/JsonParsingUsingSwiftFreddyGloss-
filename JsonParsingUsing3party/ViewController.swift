//
//  ViewController.swift
//  JsonParsingUsing3party
//
//  Created by mac on 12/07/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lbl_Name: UILabel!
    @IBOutlet weak var lbl_Location: UILabel!
    @IBOutlet weak var lbl_CompanyName: UILabel!


    func updateUI(name:String,location:String,companyname:String){
        self.lbl_Name.text = name
        self.lbl_Location.text = location
        self.lbl_CompanyName.text = companyname
    }
    
    
    @IBAction func btn_Swifty(_ sender: Any) {
        print("Swifty")
        DataService.shared.getUsers() { data in
            guard let swifty = SwiftyPerson.init(data: data) else {return}
            self.updateUI(name: swifty.name, location: swifty.location, companyname: swifty.companyname)
        }
    }

    @IBAction func btn_Freddy(_ sender: Any) {
        print("Freddy")
        DataService.shared.getUsers() { data in
            guard let freedy = FreddyPerson.init(data: data) else {return}
            self.updateUI(name: freedy.name, location: freedy.location, companyname: freedy.companyname)
        }
    }
    
    @IBAction func btn_Gloss(_ sender: Any) {
        print("Gloss")
        DataService.shared.getUsers() { data in
            guard let gloss = GlossPerson.init(data: data) else {return}
            self.updateUI(name: gloss.name, location: gloss.location, companyname: gloss.companyname)
        }
    }
    
    
    @IBAction func btn_Clear(_ sender: Any) {
        print("Clear")
        updateUI(name: "", location: "", companyname: "")
        
//        DataService.shared.getUsers() { data in
//            let json = try! JSONSerialization.jsonObject(with: data, options: [])
//            print("JSON = \(json)")
//        }
    }
}

