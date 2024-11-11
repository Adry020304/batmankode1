//
//  ContentView.swift
//  batmankode1
//
//  Created by Adrian Najera on 5/27/24.
//

import SwiftUI
        
struct List_SafeAreaInsets: View {
    var body: some View {
        VStack(spacing: 0){
            Text("List")
            Text("SafeAreaInsets")
            
            List {
                ForEach(1..<21) { number in
                    Text("\(number)")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.green, in: RoundedRectangle(cornerRadius: 10))
                }
            }
            .listStyle(.plain)
            .safeAreaInset(edge: .bottom) {
                VStack{
                    Divider()
                    Text("Total: 20")
                        .foregroundStyle(.secondary)
                }
                .background(.bar)
            }
         }
        .font(.title)
    }
}
            
#Preview {
    List_SafeAreaInsets()
     }




