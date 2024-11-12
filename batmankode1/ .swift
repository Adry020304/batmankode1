//
//  ContentView.swift
//  batmankode1
//
//  Created by Adrian Najera on 5/27/24.
//

import SwiftUI
        
struct List_RowSpacing: View{
    var body: some View {
        VStack(spacing: 0){
            
            List {
                Text("Row 1")
                Text("Row 2")
                    .listRowBackground(Color.red)
                Text("Row 3")
                    .listRowBackground(Color.blue)
                Text("Row 4")
                    .listRowBackground(Color.green)
                Text("Row 5")
                    .listRowBackground(Color.pink)
            }
            
            .listStyle(.plain)
            .listRowSpacing(100)
        }
        
        .font(.title)
    }
}

#Preview {
    List_RowSpacing()
     }




