//
//  ContentView.swift
//  To Do List
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
struct ContentView: View {
    @State private var showNewTask = true
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

