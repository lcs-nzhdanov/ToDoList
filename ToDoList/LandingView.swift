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
                    ExtractedView(title: "Hello", done: true)
                    
                    ExtractedView(title: "Hello2", done: true)
                    
                    ExtractedView(title: "Hello3", done: true)
                }
                    .searchable(text: $searchText)
                HStack {
                    
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

struct ExtractedView: View {
    let title: String
    let done: Bool
    
    var body: some View {
        Label(
            title: {Text(title)},
            icon: {
                if done {
                    Image(systemName: "checkmark.circle")
                } else {
                    Image(systemName: "circle")
                }
            }
        )
    }
}
