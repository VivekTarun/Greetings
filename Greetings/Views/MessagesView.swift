//
//  MessagesView.swift
//  Greetings
//
//  Created by Vivek Tarun on 30/07/23.
//

import SwiftUI

// This is a list of message view
struct MessagesView: View {
    
    let messages = [
        DataItemModel(text: LocalizedStringKey("Hello There!"), color: Color("Green")),
        DataItemModel(text: LocalizedStringKey("welcome to swift programming"), color: Color("Purple")),
        DataItemModel(text: LocalizedStringKey("Are you ready to"), color: Color("Red")),
        DataItemModel(text: LocalizedStringKey("start exploring?"), color: Color("Yellow")),
        DataItemModel(text: LocalizedStringKey("Boom"), color: Color("Gray"))
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

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
