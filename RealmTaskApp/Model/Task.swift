//
//  Task.swift
//  RealmTaskApp
//
//  Created by BOBUR on 23/02/2021.
//

import Foundation
import RealmSwift

class Task: Object {
    @objc dynamic var name = ""
    @objc dynamic var note = ""
    @objc dynamic var data = Data()
    @objc dynamic var isComplete = false
    
}
