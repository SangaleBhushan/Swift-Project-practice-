//
//  ListView.swift
//  WeatherApp
//
//  Created by Siddhatech on 12/07/24.
//

import SwiftUI


struct ListView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        List(scrums, id: \.title) { scrum in
            CardView(scrum: scrum)
        
        }
    }
}




#Preview{
    ListView(scrums: DailyScrum.sampleData)
}

struct CardView: View {
    let scrum: DailyScrum
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    
            }
            .font(.caption)
        }
        .padding()
       
    }
}
