//
//  To_Do_ListApp.swift
//  To Do List
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData
@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
