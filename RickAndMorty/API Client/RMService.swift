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
    ///   - type: The type of object we expect to get back
    ///   - competion: Call back with data or error
    public func execute<T: Codable>
    (_ request: RMRequest,
     expecting type: T.Type,
     competion: @escaping (Result<T, Error>) -> Void
    ) {
        
    }
}
