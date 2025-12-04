//
//  CustomCapsule.swift
//  BookManagerCH4
//
//  Created by Luis Renteria on 12/2/25.
//

import SwiftUI

struct CustomCapsule: View{
    //Props go right here
    var text: String
    var color = Color.accentColor // this prop has a default value, so it's optional
    
    var body: some View {
        Text(text)
            .font(.caption)
            .fontWeight(.bold)
            .padding(8)
            .background(color.opacity(0.2))
            .clipShape(Capsule())
    }
}
