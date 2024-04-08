//
//  TodoItem.swift
//  ToDoList
//
//  Created by Nikita Zhdanov on 2024-04-08.
//

import Foundation

struct TodoItem: Identifiable {
    let id = UUID()
    var title: String
    var done: Bool
}

let first_item = TodoItem(title: "Study for Calc", done: false)

let second_item = TodoItem(title: "Play R6", done: true)

let third_item = TodoItem(title: "Go to gym", done: true)


let exampleItems = [
    first_item,
    second_item,
    third_item
]
