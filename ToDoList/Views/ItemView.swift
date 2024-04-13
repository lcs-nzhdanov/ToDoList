//
//  ItemView.swift
//  ToDoList
//
//  Created by Nikita Zhdanov on 2024-04-05.
//

import SwiftUI
import SwiftData

struct ItemView: View {
    @Bindable var currentItem: TodoItem
    
    var body: some View {
        Label(
            title: {
                TextField("Enter a to-do item", text: $currentItem.title, axis: .vertical)
            },
            icon: {
                Image(systemName: currentItem.done ? "checkmark.circle": "circle")
                // Tap to mark as done
                    .onTapGesture {
                        currentItem.done.toggle()
                    }
            }
        )
    }
}

#Preview {
    //Within the scope of the preview structure, we create a local instance of a SwiftData container to use – it's the same in-memory container we are using to preview LandingView.
    
    let container = TodoItem.preview
    
    //Since we have declared a stored property within the scope of the preview structure, we must add an explicit return keyword in front of our List structure.
    return List {
        ItemView(currentItem: TodoItem.someItem)
        ItemView(currentItem: TodoItem.anotherItem)
    }
    .modelContainer(container)
    //The .modelContainer view modifier is used to insert the in-memory container with our mock data into the environment. This container is then used by the Xcode Preview window to show us what ItemView looks like.
    
}
