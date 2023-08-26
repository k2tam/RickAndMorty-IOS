//
//  RMCharacterGender.swift
//  RickAndMorty
//
//  Created by k2 tam on 26/08/2023.
//

import Foundation

enum RMCharacterGender: String, Codable {
    // The gender of the character ('Female', 'Male', 'Genderless' or 'unknown')
    case female = "Female"
    case male = "Male"
    case genderLess = "Genderless"
    case unkown = "unknown"
}
