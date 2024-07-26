//
//  Demo.swift
//  WeatherApp
//
//  Created by Siddhatech on 09/07/24.
//

import SwiftUI

struct Demo: View {
    @State private var name: String = ""
        @State private var showGreeting: Bool = false
        
    var body: some View {
        
                VStack {
                    // Display an Image
                    Image(systemName: "star.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.yellow)
                        .padding()
                    
                    // Display a Text
                    Text("Welcome to SwiftUI!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    
                    // Display a TextField
                    TextField("Enter your name", text: $name)
                        .frame(width: 320,height: 0)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                       
                    
                    // Display a Button
                    Button(action: {
                        showGreeting.toggle()
                    }) {
                        Text("Greet Me")
                            .font(.title2)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
                    
                    // Conditional Greeting Message
                    if showGreeting {
                        Text("Hello, \(name) ..!")
                            .font(.title)
                            .padding()
                            .foregroundColor(.black)
                    }
                    
                    Spacer()
                }
            }
    }

#Preview {
    Demo().frame(width:400,height: 800).background(Gradient(colors: gradi)).opacity(0.8).brightness(-0.3)
}


