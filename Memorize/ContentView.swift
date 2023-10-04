//
//  ContentView.swift
//  Memorize
//
//  Created by Денис Игнатенко on 03.10.2023.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        let emojis = ["🦾", "🤡", "👾", "🤯", "🤯"]
        
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
     let content: String
   @State var isFaceUp = false
    
    var body: some View {
        ZStack {
            let base = Circle()
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
