//
//  ContentView.swift
//  batmankode1
//
//  Created by Adrian Najera on 5/27/24.
//

import SwiftUI
        
struct List_ListSectionSeparator: View{
    var body: some View {
        
        VStack(spacing: 0){
            Text("List")
            Text("Never in the life is heasy but you can do it")
                .background(Color.cyan)
            List {
                Section {
                    
                    Text("Row 1")
                    Text("Row 2")
                    Text("Row 3")
                    Text("Row 4")
                    Text("Row 5")
                    Text("Row 6")
                } header: {
                    Text("Section 1")
                }
                Section {
                    Text("Row 7")
                    Text("Row 8")
                    Text("Row 9")
                    Text("Row 10")
                } header: {
                    Text("Section 2")
                }
            }
            .listStyle(.plain)
        }
    }
}
#Preview {
    List_ListSectionSeparator()
     }




