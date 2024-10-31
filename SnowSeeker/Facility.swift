//
//  Facility.swift
//  SnowSeeker
//
//  Created by Дарья Яцынюк on 31.10.2024.
//

import Foundation
import SwiftUI

struct Facility: Identifiable {
    let id = UUID()
    let name: String
    
    private let icons = [
        "Accommodation": "house",
        "Beginners": "1.cicle",
        "Cross-country": "map",
        "Eco-friendly": "leaf.arrow.circlepath",
        "Family": "person.3"
    ]
    
    private let descriptions = [
        "Accommodation": "This resort has popular on-site accomodation.",
        "Beginners": "This resort has lots of ski schools.",
        "Cross-country": "This resort has many cross-country ski routes.",
        "Eco-friendly": "This resort has won an award for environmentak friendliness.",
        "Family": "This resort is popular with families."
    ]
    
    var description: String {
        if let message = descriptions[name] {
            message
        } else {
            fatalError("Unknown facility type: \(name)")
        }
    }
    
    var icon: some View {
        if let iconName = icons[name] {
            Image(systemName: iconName)
                .accessibilityLabel(name)
                .foregroundColor(.secondary)
        } else {
            fatalError("Unknown facility type: \(name)")
        } 
    }
}
