//
//  ContentView.swift
//  batmankode1
//
//  Created by Adrian Najera on 5/27/24.
//

import SwiftUI
        
struct List_ListRowSeparatorTint: View{
    var body: some View {
        
        VStack(spacing: 20.0) {
            Text("List")
            Text("In my project is very important my coding")
                .background(Color.cyan)
            
            List {
                Text("Row 1")
                Text("Yellow")
                    .listRowSeparatorTint(.yellow)
                Text("Row 2")
                Text("Row 3")
                Text("Row 4")
                Text("Row 6")
                Text("Green on top")
                    .listRowSeparatorTint(.green, edges: .top)
                Text("Row 8")
                Text("Row 9")
                Text("Row 10")
            }
        }
        .font(.title)
    }
}
        
        
       
#Preview {
    List_ListRowSeparatorTint()
     }




