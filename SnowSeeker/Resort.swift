//
//  Resort.swift
//  SnowSeeker
//
//  Created by Дарья Яцынюк on 28.10.2024.
//

import Foundation

struct Resort: Codable, Hashable, Identifiable {
    var id: String
    var name: String
    var country: String
    var description: String
    var imageCredit: String
    var price: Int
    var size: Int
    var snowDepth: Int
    var elevation: Int
    var runs: Int
    var facilities: [String]
    
    static let allResorts: [Resort] = Bundle.main.decode("resort.json")
    static let example = allResorts[0]
}
