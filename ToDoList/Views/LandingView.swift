//
//  ContentView.swift
//  ToDoList
//
//  Created by Nikita Zhdanov on 2024-04-05.
//

import SwiftData
import SwiftUI

struct LandingView: View {
    // MARK: Stored properties
    
    // The item currently being added
    @State var newItemDescription: String = ""
    
    // The search text
    @State var searchText = ""
    
    // Access the model context (required to do additions, deletions, updates, et cetera)
    @Environment(\.modelContext) var modelContext
    
    // The list of to-do items
    @Query var todos: [TodoItem]
    
    // MARK: Computed properties
    var body: some View {
        NavigationView {
            
            VStack {
                List {
                    ForEach(todos) { todo in
                        
                        ItemView(currentItem: todo)

                    }
                    .onDelete(perform: removeRows)
                }
                .searchable(text: $searchText)
                
                
                HStack {
                    TextField("Enter an item to do", text: $newItemDescription)
                    
                    Button("Add") {
                        createToDo(withTitle: newItemDescription)
                    }
                    .disabled(newItemDescription.isEmpty)
                }
                    .padding(20)
            }
            .navigationTitle("To do")
            .onAppear {
                printCommandToOpenDatabaseFile()
            }
        }
    }
    
    //MARK: Functions
    func createToDo(withTitle title: String) {
        
        // Create the new to-do item instance
        let todo = TodoItem(title: title, done: false)
        
        // Append to the arrray
        modelContext.insert(todo)
        
        todo.title = "Enter an item to do"
    }
    
    
    func removeRows(at offsets: IndexSet) {
        
        // Accept the offset within the list
        // (the position of the item being deleted)
        //
        // Then ask the model context to delete this
        // for us, from the 'todos' array
        for offset in offsets {
            modelContext.delete(todos[offset])
        }
    }
}


#Preview {
    LandingView()
}


