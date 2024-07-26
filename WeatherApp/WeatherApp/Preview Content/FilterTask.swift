//
//  FilterTask.swift
//  WeatherApp
//
//  Created by Siddhatech on 15/07/24.
//

import SwiftUI

struct FilterTask: View {
    var person : [persons] = [
        persons(id:1,name:"Ajay", age: 21),
        persons(id:2,name:"Atul", age: 22),
        persons(id:3,name:"Sagar", age: 23),
        persons(id:4,name:"Dipak", age: 24),
        persons(id:5,name:"Raj Vikram", age: 25),
        persons(id:5,name:"Raj Vikram", age: 25),
        persons(id:5,name:"Raj Vikram", age: 25),
        persons(id:5,name:"Raj Vikram", age: 25),
        persons(id:5,name:"Raj Vikram", age: 25),
        persons(id:5,name:"Raj Vikram", age: 25),
        persons(id:5,name:"Raj Vikram", age: 25),
        persons(id:5,name:"Raj Vikram", age: 25),
        persons(id:5,name:"Raj Vikram", age: 25),
        persons(id:6,name:"Vijay",age: 26)]
    
    var numbers = [0,1,2,3]
    @State private  var isChange : Int = 0
    var body: some View {
        
        HStack(spacing:30){
            Button(action :{
               isChange = 1
            }) {
                buttonView(buttonName: "even no")
            }
            
            Button(action: {
                isChange = 2
            })
            {
                buttonView(buttonName: "odd No")
            }
            Button(action:{
               isChange = 3
            })
            {
               buttonView(buttonName: "All Person")
            }
        }
        
        Picker("numbers",selection: $isChange){
            ForEach(numbers, id: \.self){num in
                Text(" Select Number \(num)")
            }
        }
        .frame(width: 200)
        .padding()
        .background(RoundedRectangle(cornerRadius: 25.0).fill(Color.black))
        .foregroundColor(.white)
        
        
        List(isChange == 3 ? person : ( isChange == 1 ? person.filter{ $0.age%2 == 0 } : ( isChange == 2 ? person .filter{ $0.age % 2 != 0}:[])), id: \.self){ pers in
            CardV(person: pers)
        }
        
        
    }
    
}

#Preview {
    FilterTask()
}

struct buttonView : View {
    var buttonName : String
    var body: some View {
        Text(buttonName)
            .padding()
            .background(.black)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct CardV :View {
    var person : persons
    var body: some View {
        VStack(alignment: .leading){
            Text("\(person.id)")
                .font(.title)
            HStack(spacing : 30){
                Text("Name:- \(person.name)")
                    .font(.caption2)
                Spacer()
                Text("Age:- \(person.age)")
                    .font(.caption2)
            }
            
        }
    }
}


struct persons : Hashable{
    let id : Int
    var name : String
    var age : Int
    
    
}











//    func filerData(Case : Int){
//        switch Case {
//        case 1 :
//            filtredData = persons.filter{ (key , value) in
//                guard let age = value["age"]  as? Int else {return false}
//                
//                return age % 2 == 0
//            }
//         case 2 :
//            filtredData = persons.filter{ (key , value) in
//                guard let age = value["age"]  as? Int else {return false}
//                
//                return age % 2 != 0
//            }
//        case 3 :
//              filtredData = persons
//        default:
//            print("")
//            
//        }
//    }
        
    

//    @State private var filtredData : [persons]=[] // without this variable
//    func filterData(Case :Int){
//        switch Case {
//        case 1 :
//          filtredData = person.filter{
//                $0.age % 2 == 0
//            }
//        case 2 :
//            filtredData  = person.filter{
//                $0.age % 2 != 0
//            }
//        case 3 :
//            filtredData = person
//        default:
//            filtredData = []
//        }
//    }

