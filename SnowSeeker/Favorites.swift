//
//  Favorites.swift
//  SnowSeeker
//
//  Created by Дарья Яцынюк on 31.10.2024.
//

import SwiftUI

class Favorites: ObservableObject {
    private var resorts: Set<String>
    private let key = "Favorites"
    
    init() {
        if let savedResorts = UserDefaults.standard.array(forKey: key) as? [String] {
            resorts = Set(savedResorts)
        } else {
            resorts = []
        }
    }
    
    func contains(_ resort: Resort) -> Bool {
        resorts.contains(resort.id)
    }
    
    func add(_ resort: Resort) {
        objectWillChange.send()
        resorts.insert(resort.id)
        save()
    }
    
    func remove(_ resort: Resort) {
        objectWillChange.send()
        resorts.remove(resort.id)
        save()
    }
    
    func save() {
        UserDefaults.standard.set(Array(resorts), forKey: key)
    }
}
