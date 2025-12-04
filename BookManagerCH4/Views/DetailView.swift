//
//  DetailView.swift
//  BookManagerCH4
//
//  Created by Jorge Gabriel Marin Urias on 11/22/25.
//

// When you select an item from the list, this view gives more detail about the view itself

import SwiftUI

struct DetailView: View {
    
    @Binding var book: Book
    @State var showEditBookSheet: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    Image(book.coverImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 150)
                        .padding(.vertical,20)
                    VStack {
                        Text(book.title)
                            .font(.largeTitle)
                        Text("by \(book.author == "" ? "Unknown" : book.author)") //ternary operator
                            .font(.headline)
                            .foregroundColor(.secondary)
                    }
                }
                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        if (book.status != .unknown) {
                            CustomCapsule(text: book.status.rawValue, color: .secondary)
                        }
                        if (book.genre != .unknown) {
                            CustomCapsule(text: book.genre.text, color: book.genre.color)
                        }
                        Spacer()
                        FavoriteToggle(isFavorite: $book.isFavorite)
                    }
                    Text(book.details)
                    if (book.rating == 0) {
                        Text("No rating yet.")
                    } else {
                        Text("Rating: \(book.rating)\(book.rating == 1 ? " star" : " stars")")
                    }
                    Text("My Review: \(book.review)")
                }
                .padding(.horizontal, 20)
            }
        }
        .navigationBarItems(trailing: Button("Edit"){
            showEditBookSheet.toggle()
        })
        .sheet(isPresented: $showEditBookSheet) {
            AddEditView(bookToEdit: $book)
        }
    }
}
