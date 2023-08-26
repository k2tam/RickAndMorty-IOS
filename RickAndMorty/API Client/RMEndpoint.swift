//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by k2 tam on 25/08/2023.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndpoint: String {
    ///End point to get character info
    case character = "character"
    ///End point to get episode info
    case episode = "episode"
    ///End point to get location info
    case location = "location"
}
