//
//  LoginPage2.swift
//  LoginPage
//
//  Created by Siddhatech on 10/07/24.
//

import SwiftUI

struct LoginPage2: View {
    @Environment(\.presentationMode) private var
    presentatioMode :Binding<PresentationMode>
    var body: some View {
        VStack{

            HStack{
                Spacer().frame(width: 0)
                .navigationBarBackButtonHidden(true)
                .toolbar(content: { ToolbarItem(placement: .navigationBarLeading){
                    Button(action: {
                        presentatioMode.wrappedValue.dismiss()
                    }, label:{
                        Image(systemName: "arrow.left").font(.system(size:25,weight: .bold)).padding(.leading,20)
                            .padding(.top ,60)

                    })
                }
            
                })
               
                Spacer()
                Text("token")
                    
                .font(.system(size:25,weight:.bold))
                .padding(.trailing, 170)
               }.font(.title)
                .frame(width: .infinity,height:150)
                .background(Color.test2)
                .foregroundColor(.white)
    
                
            
            VStack{
                VStack{
                    ZStack{
                        Circle().stroke(Color.white.opacity(0.3),style:StrokeStyle(lineWidth:4))
                        
                        Circle()
                            .trim(from:0.0,to: 0.75)
                            .stroke(Color.orange1,style: StrokeStyle(lineWidth:4))
                        Text("45")
                        
                    }
                    
                    
                }.padding()
                    .background(Color.color2)
                    .cornerRadius(200)
                    .frame(width: 70,height:70)
                    .offset(x:0,y: 44)
                    .zIndex(1.0)
                VStack(){
                    Spacer()
                    Text("temporary code")
                        .font(.system(size: 15,weight:.bold,design:.rounded))
                        .foregroundStyle(Color.granito)
                    HStack{
                        Text("4555 8946")
                            .font(.system(size:30,weight: .bold))
                            .foregroundStyle(Color.numberc).padding(10).padding(.leading,30)
                        Image("copy")
                            .frame(width: 20,height: 20)
                            .offset(x:-12,y: 1)
                            
                    }
                        
                }.frame(width: 370,height: 130)
                    .background(Color.color2)
                    .cornerRadius(10.0)
                Spacer().frame(height: 2)
                HStack(){
                    Text("next code")
                        .font(.system(size: 20,weight: .medium))
                        .foregroundStyle(Color.test2)
                    Image("arrow")
                }.frame(width: 370,height: 55)
                    .background(Color.color2)
                    .cornerRadius(10.0)
                
        
                    
            }.offset(x:0,y: -50)
            HStack(){
                Button("Additional Information"){
                
                }.foregroundColor(.test2).padding(.horizontal,11).fontWeight(.bold)
                
                Spacer()
                Image("arrow1").padding(.trailing,15).padding()
                    .frame(width: 20, height: 20)
                
            }.frame(width: 340,height: 22)
            .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 25.0)
                        .stroke(Color.test2,lineWidth: 1)
                )
            Text("""
Banco Popular Dominicano will never contact you in any way to request numbering of your Token.Report fraud by calling \(Text("808-544-6868").font(.system(size: 15,weight: .medium)).foregroundColor(Color.test2)), if you are abroad \(Text(" check our contact numbers").font(.system(size:15 ,weight:.medium)).foregroundColor(.test2))
""").padding()
            
           
        }
        Spacer()
    }
}

#Preview {
    LoginPage2()
}
