//
//  PickANumber.swift
//  100 movies
//
//  Created by Jaroslav Bažant on 20.07.2022.
//

import Foundation

struct PickANumber {
    var movies: [String] = []
    var pickedMovie = ""
    let defaults = UserDefaults.standard
    let arrayKey = "arrayForPick"
    
    mutating func LoadNumbers() {
        if defaults.stringArray(forKey: arrayKey) != nil {
            movies = defaults.stringArray(forKey: arrayKey)!
        } else {
            movies = FillArray()
            defaults.set(movies, forKey: arrayKey)
        }
    }
    
    func SaveNumbers() {
        defaults.set(movies, forKey: arrayKey)
        print("Array saved")
    }
    
    mutating func PickNumber() {
        if let index = movies.indices.randomElement() {
            pickedMovie = movies.remove(at: index)
            SaveNumbers()
        }
    }
    
    func FillArray() -> [String]{
        var pole:[String] = []
        for i in 1...100 {
            pole.append(String(i))
        }
        return pole
    }
    
    mutating func ResetArray() {
        movies = FillArray()
        SaveNumbers()
    }
}
/*
 Struktura pro výběr ještě neshlédnutého filmu.
 Obsahuje pole, do kterého se načítají čísla ještě neshlédnutých filmů,
 dále proměnnou, která nakonec obsahuje vybraný film (ten se objeví na obrazovce)
 Řeší i ukládání a načítání již shlédnutých filmů do lokálního souboru
 */
