//
//  FavoritesView.swift
//  BookManagerCH4
//
//  Created by Luis Renteria on 12/4/25.
//

import SwiftUI

struct FavoritesView: View {
    
    @Binding var books: [Book]
    let gridLayout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    //Computed Variable -> as soon as books binding variable changes the favoriteBooks variable will compute itself to match the state
    private var favoriteBooks: [Binding<Book>] {
        $books.filter { $0.wrappedValue.isFavorite }
    }
    
    var body: some View {
        NavigationStack {
// FIRST:
//            ForEach(favoriteBooks, id: \.id) {
//                book in Text(book.wrappedValue.title)
//            }
// SECOND:
//            LazyVGrid(columns: gridLayout){
//                ForEach(favoriteBooks, id: \.id) {
//                    book in Text(book.wrappedValue.title)
//                }
//            }
            ScrollView {
                LazyVGrid(columns: gridLayout){
                    ForEach(favoriteBooks, id: \.id) {
// THIRD:
//                        book in Text(book.wrappedValue.title)
// FOURTH:
//                        book in BookCard(book: book)
                        book in NavigationLink(destination: DetailView(book: book)){
                            BookCard(book: book)
                        }
                    }
                }
            }
            .navigationTitle("My Favorite Books")
            .padding()
        }
    }
}

