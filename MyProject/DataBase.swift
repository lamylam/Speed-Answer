//
//  DataBase.swift
//  MyProject
//
//  Created by Admin on 09/01/2019.
//  Copyright © 2019 Admin. All rights reserved.
//



import Foundation
import RealmSwift


class DataBase : Object {
    @objc dynamic var name:String = "999"
    
    var allScores = List<AllScores>()
    
    func addCharacter(_ scores:AllScores) {
        
        allScores.append(scores)
    }
}


