//
//  TestView.swift
//  LoginPage
//
//  Created by siddhatech on 18/07/24.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack{
                
                Text("Swift by Sundell")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(35)
                    .background(
                        LinearGradient(
                            colors: [.orange, .red],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .overlay(starOverlay, alignment:.topLeading)
                    .cornerRadius(20)
                
                
                
            }.frame(width: geometry.size.width ,height: geometry.size.height)
                .background(
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
                            .frame(width: geometry.size.width, height: geometry.size.height * 0.9)
                            .offset(y: geometry.size.height / 3.4)
                        }
                    }
                )
                .ignoresSafeArea(.all)
            
        }
    }
}

#Preview {
    TestView()
}

private var starOverlay: some View {
    Image(systemName: "star")
        .foregroundColor(.white)
        .padding([.top, .leading], 15)
    
}
    
