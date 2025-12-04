//
//  AddEditView.swift
//  BookManagerCH4
//
//  Created by Jorge Gabriel Marin Urias on 11/25/25.
//
import SwiftUI

struct AddEditView: View {
    
    @Binding var bookToEdit: Book
    @State var workingBook: Book
    @Environment(\.dismiss) var dismiss
    
    
    private var titleText: String
    
    //this is run only one time at creation
    init(bookToEdit: Binding<Book>){

        self._bookToEdit = bookToEdit
        self._workingBook = .init(initialValue: bookToEdit.wrappedValue)
        self.titleText = bookToEdit.wrappedValue.title.isEmpty ? "Add book" : "Edit book"
    }
    
    var body: some View {
        NavigationStack {
            Form {
                //Section creates a "white globe" around all input fields
                //Use divide fields
                Section(header: Text("Book Details")){
                    // a plain text field
                    TextField("Title of the book", text: $workingBook.title)
                    TextField("Author", text: $workingBook.author)
                    Picker("Genre", selection: $workingBook.genre){
                        ForEach(Genre.allCases, id: \.self) {
                            genre in Text(genre.text).tag(genre)
                        }
                    }
                    TextEditor(text: $workingBook.details)
                        .frame(height:150)
                }
                Section(header: Text("My Review")){
                    Picker("Rating", selection: $workingBook.rating){
                        //special base case
                        Text("No rating").tag(0)
//                        Text("1").tag(1)
//                        Text("2").tag(2)
//                        Text("3").tag(3)
//                        Text("4").tag(4)
//                        Text("5").tag(5)
                        ForEach(1...5, id: \.self){
                            rating in Text("\(rating)").tag(rating)
                        }
                    }
                    Picker("Reading Status", selection: $workingBook.status){
                        //Enums have a special property 'allCases'
                        ForEach(ReadingStatus.allCases, id: \.self) {
                            status in Text(status.rawValue).tag(status)
                        }
                    }
                    TextEditor(text: $workingBook.review)
                        .frame(height: 150)
                }
            }
            .navigationBarTitle(titleText)
            .toolbar{
                ToolbarItem(placement: .confirmationAction){
                    Button("Save"){
                        dismiss()
                        self.$bookToEdit.wrappedValue = self.workingBook
                    }.disabled(workingBook.title.isEmpty)
                }
            }
        }
    }
}
