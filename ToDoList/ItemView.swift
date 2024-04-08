//
//  ItemView.swift
//  ToDoList
//
//  Created by Nikita Zhdanov on 2024-04-05.
//

import SwiftUI

struct ItemView: View {
    let currentItem: TodoItem
    
    var body: some View {
        Label(
            title: {Text(currentItem.title)},
            icon: {
                Image(systemName: currentItem.done ? "checkmark.circle": "circle")
            }
        )
    }
}

#Preview {
    ItemView(currentItem: first_item)
}
