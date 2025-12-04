//
//  BookLinkItem.swift
//  BookManagerCH4
//
//  Created by Jorge Gabriel Marin Urias on 11/22/25.
//

import SwiftUI

struct BookLinkItem: View {
    @Binding var book: Book
    
    var body: some View { //internationalization -> i18n
        HStack{
            Image(book.coverImage)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 60, maxHeight: 60)
            VStack(alignment: .leading) { //LTR <> RTL
                Text(book.title)
                Text(book.author)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
    }
}

