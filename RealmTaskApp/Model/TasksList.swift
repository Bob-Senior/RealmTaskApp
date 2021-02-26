//
//  TasksList.swift
//  RealmTaskApp
//
//  Created by BOBUR on 23/02/2021.
//

import Foundation
import RealmSwift

class TasksList: Object {
    @objc dynamic var item = ""
    @objc dynamic var date = Date()
    let tasks = List<Task>()
}
