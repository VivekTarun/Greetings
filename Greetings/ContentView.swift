//
//  ContentView.swift
//  Greetings
//
//  Created by Vivek Tarun on 29/07/23.
//

import SwiftUI

struct DataItemModel {
    let text: String
    let color: Color
}

struct ContentView: View {
    
    let messages = [
        DataItemModel(text: "Hello tehre!", color: .green),
        DataItemModel(text: "welcome to swift programming", color: .gray),
        DataItemModel(text: "Are you ready to", color: .yellow),
        DataItemModel(text: "start exploring?", color: .red),
        DataItemModel(text: "Boom", color: .purple)
    ]
    var body: some View {
        VStack(alignment: .leading) {
            TextView(text: messages[0].text, color: messages[0].color)
            TextView(text: messages[1].text, color: messages[1].color)
            TextView(text: messages[2].text, color: messages[2].color)
            TextView(text: messages[3].text, color: messages[3].color)
            TextView(text: messages[4].text, color: messages[4].color)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TextView: View {
    let text: String
    let color: Color
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.semibold)
            .padding()
            .background(color.opacity(0.8))
            .cornerRadius(20.0)
            .shadow(color: color.opacity(0.4), radius: 5, x: 10, y: 10)
    }
}
