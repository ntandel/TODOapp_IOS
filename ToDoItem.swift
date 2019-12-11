//
//  ToDoItem.swift
//  TodoApp


// StudentID:301094688
// Assignment Name: ToDo Application
//
//  Created by Nisha Tandel on 2019-12-04
//  Copyright © 2019 Nisha Tandel. All rights reserved.
//

import Foundation

struct TodoItem : Codable {
    
    var title:String
    var completed:Bool
    var createdAt:Date
    var itemIdentifier:UUID
    
    func saveItem() {
        DataManager.save(self, with: itemIdentifier.uuidString)
    }
    
    func deleteItem() {
        DataManager.delete(itemIdentifier.uuidString)
    }
    
    mutating func markAsCompleted() {
        self.completed = true
        DataManager.save(self, with: itemIdentifier.uuidString)
    }
    
}
