//
//  ContentView.swift
//  ToDoList
//
//  Created by Nikita Zhdanov on 2024-04-05.
//

import SwiftUI

struct LandingView: View {
    // MARK: Stored properties
    
    // The item currently being added
    @State var newItemDescription: String = ""
    
    // The search text
    @State var searchText = ""
    
    // MARK: Computed properties
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ItemView(currentItem: first_item)
                    ItemView(currentItem: second_item)
                    ItemView(currentItem: third_item)
                }
                    .searchable(text: $searchText)
                
                HStack {
                    TextField("Enter an item to do", text: $newItemDescription)
                    
                    Button("Add") {
                        //Add an item
                    }
                }
                    .padding(20)
            }
            .navigationTitle("To do")
        }
    }
}


#Preview {
    LandingView()
}


