//
//  BackgroundView.swift
//  Greetings
//
//  Created by Vivek Tarun on 30/07/23.
//

import SwiftUI

// This is a background view
struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [.purple, .blue, .purple, .blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(0.2)
            .ignoresSafeArea()
    }
    
}
struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
