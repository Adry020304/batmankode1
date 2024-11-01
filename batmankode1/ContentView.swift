//
//  ContentView.swift
//  batmankode1
//
//  Created by Adrian Najera on 5/27/24.
//

import SwiftUI
        
struct List_ListStyle_Automatic: View {
    
    var body: some View {
        
        VStack(spacing: 20){
            Text("List")
            Text("List Style Automatic")
            Text("you can start your dreams, never give up brooo")
                .background(.green)
            
            List{
                Text("What woould you like to learn")
                    .font(.title2)
                    .fontWeight(.bold)
                Label("Learn Geography",systemImage: "singpost.right.fill")
                Label("Learn Music",systemImage: "doc.richtext")
                Label("Learn Photography",systemImage: "camera.aperture")
                Label("Learn art",systemImage: "paintpalette.fill")
                    .font(Font.system(.title3).weight(.bold))
                Label("Learn physics",systemImage: "atom")
                Label("Learn 3D",systemImage: "cube.transparent")
                Label("Learn Hair Styling",systemImage: "comb.fill")
            }
            .accentColor(.green)
            .listStyle(.automatic)
        }
        .font(.title)
    }
}
        #Preview{
            List_ListStyle_Automatic()
        }








