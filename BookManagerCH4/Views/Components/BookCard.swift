//
//  BookCard.swift
//  BookManagerCH4
//
//  Created by Luis Renteria on 12/4/25.
//

import SwiftUI

struct BookCard: View {
    
    @Binding var book: Book
    
    var body: some View {
// FIRST:
//        VStack{
//            Text(book.title)
//            Spacer() //Creates Space between components
//            Text(book.author)
//            
//        }
//        .background(
//            Image(book.coverImage)
//        )
//        .aspectRatio(1, contentMode: .fit)
//        .cornerRadius(12)
//        .shadow(color: .black.opacity(0.5), radius: 10, x: 0, y: 5)
        VStack{
                Text(book.title)
                    .frame(maxWidth: .infinity, maxHeight: 44)
                    .font(.headline)
                    .foregroundColor(.white)
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
                    .padding()
//                    .background(Color.black.opacity(0.5))
                    .background(LinearGradient(
                        colors: [.clear, .black.opacity(0.8)],
                        startPoint: .bottom,
                        endPoint: .top)
                    )
                Spacer() //Creates Space between components
                Text(book.author)
                    .frame(maxWidth: .infinity, maxHeight: 20)
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .lineLimit(1)
                    .padding(4)
//                    .background(Color.black)
                    .background(LinearGradient(
                        colors: [.clear, .black.opacity(0.8)],
                        startPoint: .top,
                        endPoint: .bottom)
                    )

            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Image(book.coverImage)
                    .resizable()
//                    .scaledToFit().opacity(0.8)
                    .scaledToFill().opacity(0.8)
            )
            .aspectRatio(1, contentMode: .fit)
            .cornerRadius(12)
            .shadow(color: .black.opacity(0.5), radius: 10, x: 0, y: 5)
    }
}
