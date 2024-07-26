//
//  ContentView.swift
//  TestProject
//
//  Created by Siddhatech on 04/07/24.
//

import SwiftUI

struct ContentView: View {
   @State private var isShowingAlert = false
   @State private var isDatafetch = false
   @State private var isShowingErrorAlert = false
   @State private var error : MyApp = .noNetwork
    @State private var Value = ""
    
    
    var body: some View {
        VStack (spacing:40) {
            Button("Fetch Data"){
                isShowingAlert=true
            }
            .alert("No Netwrok", isPresented: $isShowingAlert){
                Button("Try Again"){
                }
                Button("Cancel", role: .cancel,action: {})
            } message:{
                Text("Network is not detected try to connect cellular network or wifi")
            }
            Button("Enter Data"){
                isDatafetch.toggle()
            }
            .alert("Unable to fetch Data", isPresented: $isDatafetch){
              TextField("Enter Data",text:$Value)
                    Button("Submit"){
                        
                    }
                    Button("Cancel", role: .cancel, action:{})
            } message: {
                Text("Enter a Correct Value or Valid Value , Value  Should be fallow Given Rules")
            }
            Button("Login"){
                error = .inValidPassword
                isShowingErrorAlert.toggle()
                
            }
            .alert(isPresented: $isShowingErrorAlert, error: error){error in
                if(error == .inValidUsername){
                    TextField("username" , text: $Value)
                    Button("Submit"){
                        
                    }
                    Button("Cancel", role: .cancel, action:{})
                }
            }message:{error in
                Text(error.failureReason)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


enum MyApp : LocalizedError{
    case inValidUsername
    
    case inValidPassword
    
    case noNetwork
    
    
    var errorDescription: String?{
        switch self{
        case .inValidPassword:
            "Invalid Password"
        case .inValidUsername:
            "Invalid Username"
        case .noNetwork:
            "No Netwoek"
        
        }
    }
    
    var failureReason: String{
        switch self{
        case .inValidPassword:
            "The password Enter for the username is incorrect"
        case .inValidUsername:
            "The username you have enter does not exist in databse"
        case .noNetwork:
            "Network is not Available"
        }
    }
}
