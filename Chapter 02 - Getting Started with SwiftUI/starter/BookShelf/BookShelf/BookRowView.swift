//
//  BookRowView.swift
//  BookShelf
//
//  Created by Leon Chakravarty on 22/02/2023.
//

import SwiftUI

struct BookRowView: View {
  var book: Book
  var body: some View {
    HStack(alignment: .top) {
      Image(book.mediumCoverImageName)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(height: 90)
      VStack(alignment: .leading) {
        Text("Asynchronous Programming with SwiftUI and Combine")
          .font(.headline)
        Text("by \(book.author)")
          .font(.subheadline)
        HStack {
          Text("\(book.pages) pages")
            .font(.subheadline)
          Spacer()
          Text("\(book.isbn)")
            .font(.subheadline)
            .multilineTextAlignment(.trailing)
        }
      }
      Spacer()
    }
  }
}
