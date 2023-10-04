//
//  ContentView.swift
//  Memorize
//
//  Created by Денис Игнатенко on 03.10.2023.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
            CardView()
            CardView(isFaceUp: true)
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
   @State var isFaceUp = false
    
    var body: some View {
        ZStack {
            let base = Circle()
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("🦾").font(.largeTitle)
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
