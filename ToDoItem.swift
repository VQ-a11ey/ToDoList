//
//  ToDoItem.swift
//  To Do List
//
//  Created by Scholar on 8/8/25.
//
import SwiftData
import Foundation
@Model 
class ToDoItem {
    var title:String
    var isImportant: Bool
    
    init(title: String, isImportant: Bool = false) {
        self.title = title
        self.isImportant = isImportant
    }
}
