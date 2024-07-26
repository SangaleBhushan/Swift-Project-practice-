//
//  ObservableView.swift
//  LoginPage
//
//  Created by siddhatech on 18/07/24.
//




#Preview {
    ObservableView()
}
import SwiftUI

class UserData: ObservableObject {
    @Published var username: String = ""
}

struct ParentView: View {
    // Create an EnvironmentObject for UserData
    @EnvironmentObject private var userData: UserData

    var body: some View {
        VStack {
            TextField("Enter username", text: $userData.username)
                .padding()
            Text("Hello, \(userData.username)!")
                .padding()
        }
    }
}

struct ObservableView: View {
    // Create and pass an instance of UserData as EnvironmentObject
    @StateObject private var userData = UserData()

    var body: some View {
        VStack {
            Text("ParentView")
                .font(.title)
            Text("\(userData.username)")
        ParentView()
                .environmentObject(userData) // Inject userData as EnvironmentObject
        }
    }
}
