//
//  RMService.swift
//  RickAndMorty
//
//  Created by k2 tam on 25/08/2023.
//

import Foundation

/// Primary API Service object to get Rick and Morty data
final class RMService {
    static let shared = RMService()
    
    private init() {}
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - competion: Call back with data or error
    public func execute(_ request: RMRequest, competion: @escaping () -> Void) {
        
    }
}
