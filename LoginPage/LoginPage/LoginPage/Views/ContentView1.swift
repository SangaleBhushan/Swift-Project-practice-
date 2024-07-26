////
////  ContentView1.swift
////  LoginPage
////
////  Created by siddhatech on 18/07/24.
////
//
//import SwiftUI
//
//import SwiftUI
//
//struct ContentView1: View {
//    @State private var offset: CGSize = .zero
//
//    var body: some View {
//        RoundedRectangle(cornerRadius: 10)
//            .frame(width: 200, height: 200)
//            .foregroundColor(.blue)
//            .offset(offset)
//            .gesture(
//                DragGesture()
//                    .onChanged { value in
//                        self.offset = value.translation
//                    }
//                    .onEnded { value in
//                        withAnimation {
//                            self.offset = .zero
//                        }
//                    }
//            )
//    }
//}
//
//
//#Preview {
//        ContentView1()
//}



import SwiftUI

struct ContentView1: View {
    @State private var isTextVisible = false

    var body: some View {
        VStack {
            if isTextVisible {
                Text("Tap to Hide")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .padding()
                    .transition(.opacity)
//                    .animation(.easeInOut)
                    .onTapGesture {
                        withAnimation {
                            self.isTextVisible.toggle()
                        }
                    }
            } else {
                Text("Tap to Show")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
                    .transition(.opacity)
//                    .animation(.easeInOut)
                    .onTapGesture {
                        withAnimation {
                            self.isTextVisible.toggle()
                        }
                    }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray.opacity(0.2))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}
