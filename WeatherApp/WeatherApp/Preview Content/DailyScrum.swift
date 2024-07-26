//
//  DailyScrum.swift
//  WeatherApp
//
//  Created by Siddhatech on 12/07/24.
//

import Foundation


struct DailyScrum{
    let id = UUID()
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    static var sampleData: [DailyScrum] {
        [
            DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10),
            DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthInMinutes: 5),
            DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthInMinutes: 5)
        ]
    }
    
}


