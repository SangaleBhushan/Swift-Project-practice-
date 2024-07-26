//
//  ContentView.swift
//  LoginPage
//
//  Created by Siddhatech on 08/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var disTF:Bool{
        return !((username.count > 4 )&&(password.count > 8))
    }
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                    Image("background")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                    VStack {
                        HStack {
                            Spacer()
                            Button(action: {}, label: {
                                Image("side").resizable().aspectRatio(contentMode: .fit)
                                    .frame(width: 40, height: 40)
                            })
                        }.padding([.trailing],25)
                        Color.clear.frame(height: 50)
                        VStack{
                            Image("Gnial")
                                .resizable()
                                .frame(width:120,height: 70).padding([.bottom],40)
                            
                            HStack() {
                                Image("person").padding(.trailing,15).padding(.leading,15)
                                    .frame(width: 20, height: 20)
                                TextField("Username", text:$username)
                                    .padding(.horizontal,10)
                                    .fontWeight(.medium)
                            }.frame(width: 320,height: 22)
                                .padding()
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .stroke(Color.black, lineWidth: 1)
                                )
                            HStack(){
                                Image("lock").padding(.trailing,15).padding(.leading,15)
                                    .frame(width: 20, height: 20)
                                SecureField("Password",text:$password)
                                    .padding(.horizontal,10).fontWeight(.medium)
                            }.frame(width: 320,height: 22)
                                .padding()
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .stroke(Color.black,lineWidth: 1)
                                ).padding()
                            
                            Color.clear.frame(height: 30)
                            NavigationLink(destination: LoginPage2(),label: {
                                Text("Log In").font(.title2)
                                
                            })
                            .frame(width: 210,height: 20)
                            .padding(.leading, 60)
                            .padding(.trailing, 70)
                            .padding(.top, 12)
                            .padding(.bottom, 12)
                            .background(disTF ? .white : .test)
                            .foregroundColor(disTF ? .accentColor: .white)
                            .cornerRadius(40)
                            .overlay(RoundedRectangle(cornerRadius:/*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).stroke(disTF ? Color.accentColor :Color.test,lineWidth: 3)).padding()
                            .disabled(disTF)
                            Button(action:{
                                print("Bhushan")
                            },
                                   label:{ Text("Become a Client")
                                    .font(.title2).fontWeight(.regular)
                            })
                            .frame(width: 210,height: 18)
                            .padding(.leading, 60)
                            .padding(.trailing, 70)
                            .padding(.top, 12)
                            .padding(.bottom, 12)
                            .foregroundColor(.test2).overlay(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).stroke(Color.test2,lineWidth: 2))
                            
                            
                            Text("Forgot Your username or password ?")
                                .frame(height: 80)
                                .font(.title3)
                                .fontWeight(.regular)
                                .foregroundColor(.test2)
                                .padding()
                        }.padding([.bottom],150)
                        
                    }.padding()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
