//
//  ContentView.swift
//  batmankode1
//
//  Created by Adrian Najera on 5/27/24.
//

import SwiftUI
        
struct Link_Intro: View {
    var body: some View {
       
        VStack(spacing: 20){
            Text("Link")
            Text("introduction")
                .foregroundStyle(.gray)
            
            Text("im very happy for everything and my life its not easy im tired for everything")
                .background(Color.purple)
                .padding()
            
            
            Link("Go to Apple", destination: URL(string: "https//www.apple.com")!)
            Link("Call Now", destination: URL(string: "tel:8005551234")!)
            Link("", destination: URL(string: "")!)
            
            
            
            }
        .font(.title)
    
    }
}
    #Preview{
        Link_Intro()
        }
   

