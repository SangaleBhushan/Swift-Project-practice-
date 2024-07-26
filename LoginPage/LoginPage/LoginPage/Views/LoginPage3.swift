//
//  LoginPage3.swift
//  LoginPage
//
//  Created by Siddhatech on 16/07/24.
//

import SwiftUI

struct LoginPage3: View {
    var body: some View {
        GeometryReader{ geomentry in
            VStack{
                ScrollView{
                    
                    TopView()
                        .frame(width: geomentry.size.width * 1,height: geomentry.size.height * 0.33)
                 
                    
                    CustomizeListView()
                        .frame(width: geomentry.size.width * 0.93, height: geomentry.size.height * 0.3)
                        .background(.white)
                        .cornerRadius(20)
                        .offset(x:0,y: -50)
                    
                    VStack(spacing:40){
                        
                        TextView()
                        
                        VStack(spacing:30){
                            CustomButton1(title: "cancel code", backgroundColor:.test, foregroundColor: .white)
                            CustomButton1(title: "change code", backgroundColor: .clear, foregroundColor: .test2)
                        }
                        
                    }
                    
                }
                
            }.background(
                GeometryReader { geometry in
                    ZStack(alignment: .top) {
                        LinearGradient(
                            gradient: Gradient(colors: [.test2]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.3 )
                        
                        LinearGradient(
                            gradient: Gradient(colors: [.backgroundc]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.7)
                        .offset(y: geometry.size.height / 3.3)
                    }
                }
            ).ignoresSafeArea()
        }
    }
}


#Preview {
    LoginPage3()
}

struct CustomButton1: View {
    let title: String
    let backgroundColor: Color
    let foregroundColor: Color
    
    var body: some View {
        Button(action: {}, label:{
            Text(title)
        }).font(.system(size:15,weight: .bold))
            .frame(maxWidth: .infinity,minHeight: 48)
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .cornerRadius(40)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(foregroundColor, lineWidth: backgroundColor == .clear ? 2 : 3)
            )
            .padding(.horizontal)
            
            
            
    }
}
struct TopView :View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName:"arrow.left")
                    .font(.system(size:25,weight: .bold))
                    .foregroundColor(.white)
                    .padding()
                 Spacer()
                TextV(text: "active code", met: 25, siz: .bold, color: .white)
                    .offset(x: -32)
                Spacer()
                    
            }.frame(height: 90)
                .offset(y:-20)
            VStack(spacing:5){
                TextV(text: "RD$1,200.00", met: 24, siz: .bold, color: .test)
                
                TextV(text: "withdrawal amount", met: 14,siz: .bold, color: .white)
                    
            } .offset(y:-20)
        
        }
        
    }
}

struct TextView : View {
    var body: some View {
        VStack{
            TextV(text: "This code is valid for 24 hours", met: 15, siz: .bold, color: .test)
            TextV(text: """
You can make the withdrawal at any of
            our Banco Popular ATMs.
""", met: 12, siz: .medium, color:.granito)
            .padding(.top,1)
            .padding(.horizontal ,60)
            
        }.padding()
    }
}


struct TextV : View {
    var text : String
    var met  : CGFloat
    var siz  : Font.Weight
    var color : Color
    var body: some View {
        Text(text)
            .font(.system(size: met , weight: siz))
            .foregroundColor(color)
    }
}

struct CustomizeListView: View {
    var body: some View {
        VStack{
            HStack{
                TextV(text: "identification card:", met: 14, siz: .bold, color: .test)
                Spacer()
                TextV(text: "001-1930031-8", met: 14, siz:.regular , color: .granito)
            }.padding()

            
            Divider().frame(width: 330)
            VStack(alignment:.trailing){
                HStack{
                    TextV(text: "origin:", met: 14, siz: .bold, color: .test)
                    
                    Spacer()
                    TextV(text: "Cristina Rosas Casas", met: 14, siz:.regular , color: .granito)
                   
                }
                TextV(text: "Extended alias of the account…- *****0446", met: 14, siz: .regular, color: .granito)
                    .padding(.top,1)
            }
            .padding()
            Divider().frame(width: 330)
            HStack{
                TextV(text: "date:", met: 14, siz: .bold, color: .test)
                Spacer()
                Text(Date.now.formatted(date: .long, time: .shortened))
                    .font(.system(size: 14))
                    .foregroundColor(.granito)
            }.padding()
        }
           
          
    }
}


//struct ListView : View {
//    var body: some View {
//        List{
//            HStack{
//                TextV(text: "identification card:", met: 14, siz: .bold, color: .test)
//                Spacer()
//                TextV(text: "001-1930031-8", met: 14, siz:.regular , color: .granito)
//            }
//            VStack(alignment:.trailing){
//                HStack{
//                    TextV(text: "origin:", met: 14, siz: .bold, color: .test)
//
//                    Spacer()
//                    TextV(text: "Cristina Rosas Casas", met: 14, siz:.regular , color: .granito)
//
//                }
//                TextV(text: "Extended alias of the account…- *****0446", met: 14, siz: .regular, color: .granito)
//                    .padding(.top,1)
//            }
//            HStack{
//                TextV(text: "date:", met: 14, siz: .bold, color: .test)
//                Spacer()
//                Text(Date.now.formatted(date: .long, time: .shortened))
//                    .font(.system(size: 14))
//                    .foregroundColor(.granito)
//            }
//        }.frame(width:345,height:240)
//
//
//    }
//}
    



//
//    .background(
//        LinearGradient(colors: [.test2],  startPoint: .top,endPoint:.zero)
//            .frame(width: geomentry.size.width * 1,height: geomentry.size.height * 0.33)
//        )
//    
//    .background(
//        LinearGradient(colors: [.backgroundc],  startPoint: .center,endPoint: .bottomTrailing)
//          .frame(width: geomentry.size.width * 1,height: geomentry.size.height * 0.67)
//
//    )
