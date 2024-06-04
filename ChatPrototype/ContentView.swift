//
//  ContentView.swift
//  ChatPrototype
//
//  Created by James Kerrane on 6/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 25) {
            ChatBubble(message: "¡Holisssss!", isSender: true)
            ChatBubble(message: "¿Qué onda linda?", isSender: false)
            ChatBubble(message: "Nada mucho, solo probando Xcode ;))", isSender: true)
            ChatBubble(message: "¡Buena suerte!", isSender: false)
            ChatBubble(message: "Gracias, ¡adiós!", isSender: true)
            ChatBubble(message: "¡Hasta luego!", isSender: false)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct ChatBubble: View {
    let message: String
    let isSender: Bool
    
    var bubbleColor: Color {
        if(isSender) {
            return Color.yellow
        } else {
            return Color.teal
        }
    }
    
    var body: some View {
        Text(message)
            .padding()
            .background(bubbleColor, in: RoundedRectangle(cornerRadius: 8))
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}
