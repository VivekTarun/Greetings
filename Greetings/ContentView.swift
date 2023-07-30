//
//  ContentView.swift
//  Greetings
//
//  Created by Vivek Tarun on 29/07/23.
// KEYWORD THAT I DON'T KNOW -> identifiable, @State

import SwiftUI


// This is the data model of the app.
struct DataItemModel: Identifiable {
    let id = UUID()
    let text: String
    let color: Color
}

// This is the main view of the greeting
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

// This is a background view
struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [.purple, .blue, .purple, .blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(0.2)
            .ignoresSafeArea()
    }
    
}

// This is a list of message view
struct MessageView: View {
    
    let messages = [ 
        DataItemModel(text: "Hello There!", color: Color("Green")),
        DataItemModel(text: "welcome to swift programming", color: Color("Purple")),
        DataItemModel(text: "Are you ready to", color: Color("Red")),
        DataItemModel(text: "start exploring?", color: Color("Yellow")),
        DataItemModel(text: "Boom", color: Color("Gray"))
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages, content: { dataItem in // how for each loop work in swift.
                TextView(text: dataItem.text, color: dataItem.color)
            })
        }
        .padding()
    }
}

// This is a title view
struct TitleView: View {
    
    @State var isRotated: Bool = false
    @State var captionIndex: Int = 0
    
    let caption: [String] = [
        "Exploring ios 15 programming",
        "Learning how to bake",
        "Programming recipes",
        "A quest for knowledge"
    ]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0.0) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text(caption[captionIndex])
                    .font(.headline)
                    .fontWeight(.thin)
            }
            .padding()
            .onTapGesture {
                captionIndex = Int.random(in: 0..<caption.count)
            }
            Spacer()
            Circle()
                .strokeBorder(AngularGradient(gradient: Gradient(colors: [.blue, .green, .red]),
                                              center: .center,
                                              angle: .zero),
                              lineWidth: 15)
                .rotationEffect(isRotated ? .zero : .degrees(360))
                .onTapGesture {
                    withAnimation(Animation.spring()) {
                        isRotated.toggle()
                    }
                }
                .frame(maxWidth: 70, maxHeight: 70)
        }
        .padding()
    }
}


// This is the textView
struct TextView: View {
    let text: String
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


// This is to show the preview to canvas
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
    }
}



