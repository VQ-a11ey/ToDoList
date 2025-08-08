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
                    Text(ToDoItem.title)
                }
            }
            Button{
                withAnimation{
                    showNewTask = true
                } }label: {
                Text("+")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                }
            if showNewTask {
                NewToDoView()
            }
            
           
            
            } //vstack
       
        }
        
        
    } //endstruct
    #Preview {
        ContentView()
    }

