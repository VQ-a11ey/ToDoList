//
//  ContentView.swift
//  To Do List
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Text("To-Do List")
                    .font(.title)
                    .fontWeight(.black)
                    .padding()
            Spacer()
            }
            .padding()
            Spacer()
            Button{
            } label: {
                Text("+")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
        }
    }
}
#Preview {
    ContentView()
}
