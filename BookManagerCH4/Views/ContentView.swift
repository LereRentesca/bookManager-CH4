//
//  ContentView.swift
//  BookManagerCH4
//
//  Created by Jorge Gabriel Marin Urias on 11/22/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State var books: [Book] = getBooks() // A mock of an API call to get all books an render a List
    
    var body: some View {
        TabView {
            BookListView(books: $books)
                .tabItem {
                    Label("Books", systemImage: "books.vertical.fill")
                }
            FavoritesView(books: $books)
                .tabItem {
                    Label("Favorites", systemImage: "heart.fill")
                }
        }.tabViewStyle(.tabBarOnly)
    }
}

#Preview {
    ContentView()
}
