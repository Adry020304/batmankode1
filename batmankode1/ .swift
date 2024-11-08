//
//  ContentView.swift
//  batmankode1
//
//  Created by Adrian Najera on 5/27/24.
//

import SwiftUI
        
struct List_HeadersProminence: View {
    var body: some View {
        List {
            Section {
                Text("you can start you project in the xcode ")
                    .listRowBackground(Color.green)
            } header: {
                Text("This is my project im busy ")
            }
            .headerProminence(.standard)
            
            Section {
                Text("This is my computer im happy for my project")
                    .listRowBackground(Color.green)
            } header: {
                Text("the big project in my mind")
            }
            
            .headerProminence(.increased)
        }
        
        .font(.title)
    }
}

#Preview {
    List_HeadersProminence()
     }




