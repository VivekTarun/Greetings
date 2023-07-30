// KEYWORD THAT I DON'T KNOW -> identifiable, @State

import SwiftUI

// This is the main view of the greeting
struct GreetingsView: View {
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack(alignment: .leading) {
                TitleView()
                Spacer()
                MessagesView()
                Spacer()
                Spacer()
            }
        }
    }
}

// This is to show the preview to canvas
struct GretingsView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingsView()
        GreetingsView()
            .preferredColorScheme(.dark)
    }
}



