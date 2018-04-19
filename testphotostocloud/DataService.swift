//
//  DataService.swift
//  testphotostocloud
//
//  Created by Riya Berry on 4/16/18.
//  Copyright © 2018 Lauren Traum. All rights reserved.
//

import Foundation
import Firebase

class DataService {
    static let dataService = DataService()
    
    private var baseRef = Firebase(url: "\(DATABASE_URL)")
    private var userRef = Firebase(url: "\(DATABASE_URL)/users")
    private var jokeRef = Firebase(url: "\(BASE_URL)/jokes")
    
    var BASE_REF: Firebase {
        return _BASE_REF
    }
    
    var USER_REF: Firebase {
        return _USER_REF
    }
    
    var CURRENT_USER_REF: Firebase {
        let userID = UserDefaults.standard.value(forKey: "uid") as! String
        
        let currentUser = Firebase(url: "\(BASE_REF)").childByAppendingPath("users").childByAppendingPath(userID)
        
        return currentUser!
    }
    
    var JOKE_REF: Firebase {
        return _JOKE_REF
    }
}
