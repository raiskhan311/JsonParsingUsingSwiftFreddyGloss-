//
//  DataService.swift
//  JsonParsingUsing3party
//
//  Created by mac on 12/07/17.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation

class DataService {
    
    static let shared = DataService()
    private init() {}
    
    func getUsers(completion: (Data)-> Void) {
        guard let path = Bundle.main.path(forResource: "someJson", ofType: "json") else {return}
        let url = URL(fileURLWithPath: path)
        
        let data = try! Data(contentsOf: url)
        completion(data)
    }
    
}
