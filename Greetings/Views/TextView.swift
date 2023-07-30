//
//  TextView.swift
//  Greetings
//
//  Created by Vivek Tarun on 30/07/23.
//

import SwiftUI

// This is the textView
struct TextView: View {
    let text: LocalizedStringKey
    @State var color: Color
    
    let colors: [Color] = [.red, .green, .blue, .orange, .yellow, .purple,
                           Color(red: 0.5, green: 0, blue: 0.5),
                           Color(red: 0.5, green: 0.5, blue: 0.5),
                           Color(red: 139/255, green: 207/255, blue: 240/255),
                           Color(red: 255/255, green: 215/255, blue: 0)]
    
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.semibold)
            .padding()
            .background(color.opacity(0.7))
            .cornerRadius(20.0)
            .shadow(color: color.opacity(0.4), radius: 5, x: 10, y: 10)
            .onTapGesture {
                let length = colors.count
                let randomIndex = Int.random(in: 0..<length)
                color = colors[randomIndex]
            }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(text: "hello", color: .purple)
    }
}
