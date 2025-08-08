//
//  ContentView.swift
//  To Do List
//
//  Created by Scholar on 8/8/25.
//

import SwiftData
import SwiftUI
struct ContentView: View {
    @State private var showNewTask = true
    @Query var toDos : [ToDoItem]
    @Environment(\.modelContext) var modelContext
    var body: some View {
        
        VStack {
            HStack{
                Text("To-Do List")
                    .font(.title)
                    .fontWeight(.black)
                    .padding()
                Spacer()
            } //hstack
            .padding()
            Spacer()
            List {
                ForEach(toDos){ ToDoItem in
                    if ToDoItem.isImportant {
                        Text("‼"+ToDoItem.title)
                    }else{
                        Text(ToDoItem.title)
                    }
                    
                }
                .onDelete(perform: deleteToDo)
            }
            .listStyle(.plain)
            Button{
                withAnimation{
                    showNewTask = true
                }
            }
            label: {
                Text("+")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            if showNewTask {
                NewToDoView(showNewTask: $showNewTask, toDoItem: ToDoItem(title: "", isImportant: false))
            }
        
        
            
           
                
            } //vstack
       
        }
        
    func deleteToDo(at offsets: IndexSet) {
        for offset in offsets {
            let toDoItem = toDos[offset]
            modelContext.delete(toDoItem)
        }
    }    } //endstruct
    #Preview {
        ContentView()
            .modelContainer(for: ToDoItem.self, inMemory: true)
    }

