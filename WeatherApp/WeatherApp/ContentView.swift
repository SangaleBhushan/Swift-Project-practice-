//
//  ContentView.swift
//  WeatherApp
//
//  Created by Siddhatech on 09/07/24.
//

import SwiftUI
let gradi:[Color]=[.color1,.color2]
struct ContentView: View {
    var body: some View {
        TabView{
            Weather()
//            Demo()
            DiceRoller()
        } .tabViewStyle(.page)
    }
}

#Preview {
    ContentView().frame(width:400,height: 800).background(Gradient(colors: gradi)).opacity(0.8).brightness(-0.3)
}

