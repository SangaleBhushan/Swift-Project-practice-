//
//  test.swift
//  WeatherApp
//
//  Created by Siddhatech on 12/07/24.
//

import SwiftUI


struct test : View {
    
    var players = ["Rohit" ,"virat" ," Dhoni","Bhuvi","Shreyas","Hardik"]
    var body: some View {
                TextView(text:"DropDown Using picker")
            PickerView(players: players)
            TextView(text: "DropDown Using Menu")
            DropDownMenu(player: players)
           TextView(text: "DropDown  Combination")
            ComboView(players: players)
        
    }
}


#Preview {
    test()
}


struct TextView : View {
    var text : String
    var body: some View {
        Text(text)
            .font(.title3)
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(17)
    }
}

struct DropDownMenu:View {
    var player : [String]
   @State private var selectedItem : String = "Select one Player"
    var body: some View {
        Menu(selectedItem){
            ForEach(player , id: \.self){ play in
                Button(action: {
                    selectedItem = play
                }, label: {
                    Text(play)
                        
                })
                
            }
        }
        .frame(width: 230,height: 70)
        .font(.title3)
            .background(.black)
            .foregroundColor(.white)
            .cornerRadius(15)
            .padding()
            
    }
}

struct PickerView : View {
    @State private var selectdeItem : String = ""
    var players : [String]
    var body: some View {
        Picker("players",selection: $selectdeItem){
            ForEach(players , id: \.self){ player in
                Text(player)
            }
        }.frame(width: 230,height: 70)
         .foregroundColor(.white)
         .background(RoundedRectangle(cornerRadius: 25.0).fill(Color.gray))
            .padding()
    }
}

struct ComboView : View {
    @State private var selectdeItem : String = "Select"
    var players : [String]
    var body: some View {
        Menu(content: {
            Picker("players", selection: $selectdeItem){
                ForEach(players , id: \.self){ player in
                    Text(player)
                }
            }
             
        }, label:{
            (Text("\(selectdeItem)   ") + Text(Image(systemName:"chevron.up")))
        }).frame(width: 230,height: 70)
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 16).fill(Color.black))
            .padding()
    }
}
