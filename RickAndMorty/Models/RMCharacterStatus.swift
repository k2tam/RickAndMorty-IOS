//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by k2 tam on 26/08/2023.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    // 'Alive', 'Dead' or 'unknown'
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}
