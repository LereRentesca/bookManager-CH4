//
//  api.swift
//  BookManagerCH4
//
//  Created by Jorge Gabriel Marin Urias on 11/22/25.
//

func getBooks() -> [Book] {
    return [
        Book(
            title: "The Fellowship of the Ring",
            author: "J.R.R. Tolkien",
            coverImage: "lotr_fellowship",
            details: "Fellowship of the Ring is the first book in J.R.R Tolkien's high-fantasy trilogy"
        ),
        Book(
            title: "The Two Towers",
            author: "J.R.R. Tolkien",
            coverImage: "lotr_towers",
            details: "The Two Towers is the second book in J.R.R Tolkien's high-fantasy trilogy"
        ),
        Book(
            title: "The Return of the King",
            author: "J.R.R.Tolkien",
            coverImage: "lotr_king",
            details: "The Return of the King is the third book in J.R.R Tolkien's high-fantasy trilogy"
        ),
    ]
}
