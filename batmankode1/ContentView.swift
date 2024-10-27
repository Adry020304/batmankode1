//
//  ContentView.swift
//  batmankode1
//
//  Created by Adrian Najera on 5/27/24.
//

import SwiftUI
        
struct todo: Identifiable{
    let id = UUID()
    var action = ""
    var due = ""
    var isIndented = false
}
struct List_ListRowbackground: View {
    @State private var neWToDo = ""
    
    @State var data = [
        todo(action: "Practice coding",due:"Today"),
        todo(action:"Grocery shopping",due: "Today"),
        todo(action:"Get tickets",due: "Tomorrow"),
        todo(action:"Do laundry",due: "Next week"),
        todo(action:"Cook dinner",due: "Next week")
    ]
    var body: some View {
        List{
            Section{
                ForEach(data) { datum in
                    Text(datum.action)
                        .font(Font.system(size: 24))
                        .foregroundStyle(self.getTextColor(due:datum.due))
                        .listRowBackground(datum.due == "today" ? Color.green: Color.clear)
                        .padding()
                }
            }header:{
                VStack {
                    Text("To do").font(.title)
                    HStack{
                        TextField("new todo", text: $neWToDo)
                            .textFieldStyle(.roundedBorder)
                        Button(action:{
                            data.append(todo(action:neWToDo))
                            neWToDo = ""
                        }) {
                            Image(systemName: "plus.circle.fill").font(.title)
                                }
                            }
                        }
                                .padding(.bottom)
                  }
              }
                .listStyle(.plain)
            }
                                  private func getTextColor(due:String) -> Color {
                                due == "Today" ? Color.black : Color.primary
                            }
                        }
        #Preview{
            List_ListRowbackground()
        }








