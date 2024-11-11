//
//  ContentView.swift
//  batmankode1
//
//  Created by Adrian Najera on 5/27/24.
//

import SwiftUI
        
struct ToDoItem: Identifiable{
    let id = UUID ()
    var task = ""
    var priority = false
    var done = false
}
struct List_BindingWithin: View {
    @State  private var items = [ToDoItem(task: "Get Milk", done: false),
                                 ToDoItem(task: "Wash car", done: false),
                                 ToDoItem(task:  "Cut grass", done: false)]
    
    var body: some View {
        VStack(spacing: 20.0){
            Text("List")
            Text("Project Code")
            Text("This is the project very heasy im working")
                .background(.yellow)
            List($items) { $item in
                HStack {
                    TextField("task",text: $item.task)
                    Toggle("Done", isOn: $item.done)
                        .labelsHidden()
                }
            }
        }
        .font(.title)
    }
}

#Preview {
    List_BindingWithin()
     }




