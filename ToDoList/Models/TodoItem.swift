//
//  TodoItem.swift
//  ToDoList
//
//  Created by Nikita Zhdanov on 2024-04-08.
//

import SwiftData

@Model
class TodoItem: Identifiable {
    var title: String
    var done: Bool
    
    init(title: String, done: Bool) {
        self.title = title
        self.done = done
    }
}

let first_item = TodoItem(title: "Study for Calc", done: false)

let second_item = TodoItem(title: "Play R6", done: true)

let third_item = TodoItem(title: "Go to gym", done: true)


let exampleItems = [
    first_item,
    second_item,
    third_item
]
