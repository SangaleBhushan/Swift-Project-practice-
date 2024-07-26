//
//  DiceRoller.swift
//  WeatherApp
//
//  Created by Siddhatech on 10/07/24.
//

import SwiftUI

struct DiceRoller: View {
    @State private var Numberdie : Int=1
    var dis : Bool{
        return Numberdie >= 5
    }
    var dis2 : Bool{
        return Numberdie <= 1
    }
    var body: some View {
        VStack{
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
            HStack{
                ForEach(1...Numberdie ,id:\.description){_ in
                    Dice()
                }
            }.padding()
                HStack{
                    Button("Add Die", systemImage: "plus.circle.fill"){
                        Numberdie += 1;
                    }.buttonStyle(.bordered).padding().disabled(dis)
                    Button("Delete Die", systemImage: "minus.circle.fill"){
                        Numberdie -= 1;
        }.buttonStyle(.bordered).disabled(dis2)
                }.labelStyle(.iconOnly).font(.title)
            
    }
 }
}

#Preview {
    DiceRoller()
}


struct Dice: View{
    @State private var number : Int = 1;
    var body : some View{
        VStack{
            Image(systemName: "die.face.\(number)").resizable()
                .frame(maxWidth:65,maxHeight:65)
                .aspectRatio(1,contentMode: .fill)
            
            Button("Roll"){
                withAnimation{
                    number = Int.random(in: 1...6)
                }
            }.buttonStyle(.bordered)
        }
    }
}

