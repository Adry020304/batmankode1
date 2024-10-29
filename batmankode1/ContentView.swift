//
//  ContentView.swift
//  batmankode1
//
//  Created by Adrian Najera on 5/27/24.
//

import SwiftUI
        
struct Parent: Identifiable {
    
    var id = UUID()
    var name = ""
    var children: [Parent]?
}
struct List_WithChildren: View {
    var parents = [Parent(name: "Mark",
                          children: [Parent(name: "Beatriz")]),
                   Parent(name: "Rodrigo",
                   children: [Parent(name:"Kai"),Parent(name:"Brendan"),
                              Parent(name:"Easton")]),
                   
                   Parent(name: "Marcela",
                   children:[Parent(name:"sam"), Parent(name:"Melissa"),
                             Parent(name:"Melany")])]
    var body: some View {
        VStack(spacing: 20.0){
            Text("List")
            Text("Children")
            Text("Never give up in my life is only my and my mind")
            List(parents, children: \.children) {parent in
                Text("\(parent.name)")
            }
        }
        .font(.title)
    }
}
        #Preview{
            List_WithChildren()
        }








