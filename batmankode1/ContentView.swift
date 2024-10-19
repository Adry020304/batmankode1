//
//  ContentView.swift
//  batmankode1
//
//  Created by Adrian Najera on 5/27/24.
//

import SwiftUI
        
struct List_MoveRow: View {
    
    @State var data = ["to hit edition","practice","Grocery","Get Tickects","Clean house"]
    var body: some View {
        NavigationStack{
            List {
                ForEach(data,id: \.self) { datum in
                    Text(datum).font(Font.system(size: 24)).padding()
                        .deleteDisabled((datum == "clean house"))
                }
                
                .onDelete{ offsets in
                    data.remove(atOffsets: offsets)
                    
                    
                    
                }
            }
                .navigationTitle("to do")
                .toolbar {
                    ToolbarItem{EditButton()}
                }
                .listStyle(.plain)
            }

    .font(.title)
    }
}
    #Preview{
        List_MoveRow()
        }
   

