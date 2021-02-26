//
//  StorageManager.swift
//  RealmTaskApp
//
//  Created by BOBUR on 23/02/2021.
//

import RealmSwift
let realm = try! Realm()

class StorageManager {
    //MARK: -TAsks list func method
    
    static func saveTasksList(_ tasksList: TasksList) {
        try! realm.write {
            realm.add(tasksList)
        }
    }
        
    static func deleteList(_ tasksList: TasksList) {
            try! realm.write {
                let tasks = tasksList.tasks
                realm.delete(tasks)
                realm.delete(tasksList)
            }
    }
    static func editList(_ tasksList: TasksList, newListName: String) {
        try! realm.write {
            tasksList.item = newListName
        
}
    }
    
    static func makeAllDone(_ tasksList: TasksList) {
        try! realm.write {
            tasksList.tasks.setValue(true, forKey: "isComplete")
      }
    }
}
