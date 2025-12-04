//
//  ContentView.swift
//  BookManagerCH4
//
//  Created by Jorge Gabriel Marin Urias on 11/22/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State var books = getBooks() // A mock of an API call to get all books an render a List
    @State var showAddBookSheet: Bool = false //Used to open the add book sheet
    @State var newBook = Book(title: "", author: "", details: "") //New book we use to edit it and add it
    
    var body: some View {
        NavigationStack{
            List($books, id: \.self.id) { bookInList in
                NavigationLink(destination: DetailView(book: bookInList)) {
                    BookLinkItem(book: bookInList)
                }
            }
            .navigationBarTitle("Book Manager")
            .navigationBarItems(trailing: Button("Add"){
                // whenever we click the button execute this:
                showAddBookSheet.toggle()
            })
            .sheet(isPresented: $showAddBookSheet){
                //onDismiss
                if(!newBook.title.isEmpty){
                    books.append(newBook)
                }
                newBook = Book(title: "", author: "", details: "")
            }
            content:{
                AddEditView(bookToEdit: $newBook)
            }
        }
    }
}

#Preview {
    ContentView()
}
