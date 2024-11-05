//
//  ContentView.swift
//  batmankode1
//
//  Created by Adrian Najera on 5/27/24.
//

import SwiftUI
        
struct List_HeadersAndFooters: View {
    
    var data = ["Evans","Rachel","Mainor","Jza","Liam","Zayn"]
    var body: some View {
        List {
            Section {
                ForEach(data,id:\.self){ datum in
                    Text(datum)
                }
            } header: {
                Header()
            } footer: {
                Text("7 people on Staff")
                
            }
        }
    }
}
struct Header: View {
    var body: some View {
        Image("Mountain")
            .resizable()
            .scaledToFill()
            .frame(maxWidth: .infinity)
            .overlay(Text("Staff"))
            .font(.system(size: 120,design: .serif))
            .foregroundStyle(.green)
            .padding(.horizontal, -40)
            .padding(.top, -25)
    }
}


#Preview {
    List_HeadersAndFooters()
     }




