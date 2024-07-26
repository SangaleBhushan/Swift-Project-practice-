//
//  Weather.swift
//  WeatherApp
//
//  Created by Siddhatech on 09/07/24.
//

import SwiftUI

struct Weather: View {
    var body: some View {
        VStack{
            HStack {
                ForeCaste(day:"Mon",image: "sun.max.fill",  isRainy:false,high:70 ,low:50)
                ForeCaste(day: "Tue",image: "cloud.rain.fill",isRainy:true,high:60 ,low:30)
            }
        }
    }
}

#Preview {
    Weather().frame(width:400,height: 800).background(Gradient(colors: gradi)).opacity(0.8).brightness(-0.3)
}


struct ForeCaste : View {
    let day:String
    let image:String
    let isRainy:Bool
    let high:Int
    let low:Int
    var Icolor: Color{
        if isRainy {
            return Color.blue
        }else{
            return Color.yellow
        }
    }
    
    
    
    
    var body: some View{
        VStack{
            Text(day).font(.headline)
            Image(systemName: image)
                .foregroundColor(Icolor)
                .font(.largeTitle)
            Text("High : \(high)").fontWeight(.semibold)
            Text("Low :  \(low)").fontWeight(.semibold)
        }.padding()
    }
}
