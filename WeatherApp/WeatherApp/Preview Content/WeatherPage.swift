//
//  WeatherPage.swift
//  WeatherApp
//
//  Created by Siddhatech on 12/07/24.
//

import SwiftUI

struct WeatherPage: View {
    @State private var isNight = false
    var body: some View {
        ZStack{
            WeatherApp.background(isNight: isNight)
            
            
            VStack{
                
                  MiddleView(cityName:"Pune, India", temp: 74 , isNight: isNight)
                HStack(spacing:25){
                    
                    WeatherDayView(Day:"MON" ,image:"cloud.sun.fill", temp:76)
                    WeatherDayView(Day:"TUE" ,image:"sun.max.fill", temp:90)
                    WeatherDayView(Day:"WEN" ,image:"wind.snow", temp:25)
                    WeatherDayView(Day:"THUR" ,image:"cloud.rain.fill", temp:40)
                    WeatherDayView(Day:"FRI" ,image:"sunset.fill", temp:55)
                   
                }
                
             Spacer()
                Button(action: {
                    isNight.toggle()
                }, label: {
                    
                    WeatherChangeButton(textb: "Cahnge The Day", backc: Color.white)
                })
                Spacer()
            }
        }
    }
}

#Preview {
    WeatherPage()
}

struct WeatherDayView : View{
   var Day :String
   var image : String
   var temp :Int
   var body: some View{
    
        VStack{
            Text(Day)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40 ,height: 40)
            
            Text("\(temp)°")
                .font(.system(size: 28,weight: .medium))
                .foregroundColor(.white)
        }
       }
}


struct WeatherChangeButton:View {
    var textb : String
    var backc : Color
    var body: some View {
        Text(textb)
            .frame(width: 280,height:50)
            .background(.white)
            .font(.system(size: 20,weight: .bold,design: .default))
            .cornerRadius(10)
    }
}

struct background :View {
    var isNight : Bool
    var body: some View {
        LinearGradient(gradient:
                        Gradient(colors: [ isNight ? .black:.blue ,isNight ? .gray : .color3])
            ,startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

struct MiddleView : View {
    var cityName : String
    var temp : Int
    var isNight : Bool
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium,design:.default))
            .foregroundColor(.white)
        VStack(spacing: 5){
            Image(systemName:isNight ? "moon.stars.fill" : "cloud.sun.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temp)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }.padding(.bottom ,50 )
    }
}
