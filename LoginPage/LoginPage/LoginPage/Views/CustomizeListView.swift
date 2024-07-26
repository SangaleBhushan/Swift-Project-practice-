//
//  CustomizeListView.swift
//  LoginPage
//
//  Created by Siddhatech on 17/07/24.
//

import SwiftUI

struct CustomizeListView: View {
    var body: some View {
        VStack{
            HStack{
                TextV(text: "identification card:", met: 14, siz: .bold, color: .test)
                Spacer()
                TextV(text: "001-1930031-8", met: 14, siz:.regular , color: .granito)
            }.padding()

            
            Divider()
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
            Divider()
            HStack{
                TextV(text: "date:", met: 14, siz: .bold, color: .test)
                Spacer()
                Text(Date.now.formatted(date: .long, time: .shortened))
                    .font(.system(size: 14))
                    .foregroundColor(.granito)
            }.padding()
        }.frame(width:360,height:200)
            .background(.white)
            .cornerRadius(20)
    }
}

#Preview {
    CustomizeListView()
}
