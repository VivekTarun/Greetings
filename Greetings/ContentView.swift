//
//  ContentView.swift
//  Greetings
//
//  Created by Vivek Tarun on 29/07/23.
//

import SwiftUI

struct DataItemModel: Identifiable {
    let id = UUID()
    let text: String
    let color: Color
}

struct ContentView: View {
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack(alignment: .leading) {
                
                TitleView()
                Spacer()
                
                MessageView()
                Spacer()
                Spacer()
                
            }
        }
        
        
    }
}

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [.red, .yellow, .blue, .yellow], startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(0.2)
            .ignoresSafeArea()
    }
    
}

struct MessageView: View {
    
    let messages = [
        DataItemModel(text: "Hello tehre!", color: .green),
        DataItemModel(text: "welcome to swift programming", color: .gray),
        DataItemModel(text: "Are you ready to", color: .yellow),
        DataItemModel(text: "start exploring?", color: .red),
        DataItemModel(text: "Boom", color: .purple)
    ]
    
    var body: some View {
        ForEach(messages, content: { dataItem in // how for each loop work in swift.
            TextView(text: dataItem.text, color: dataItem.color)
        })
    }
}

struct TitleView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            Text("Greetings")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Exploring ios 15 programming")
                .font(.headline)
                .fontWeight(.thin)
        }
        .padding()
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



