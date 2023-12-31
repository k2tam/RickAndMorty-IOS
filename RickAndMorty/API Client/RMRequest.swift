//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by k2 tam on 25/08/2023.
//

import Foundation

/// Object that represent single API Call
final class RMRequest {
    
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    
    /// Desired endpoint
    private let endpoint: RMEndpoint
    
    /// Path components for API if any
    private let pathComponents: Set<String>
    
    /// Query arguments for API, if any
    private let queryParamaters: [URLQueryItem]
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach {
                string += "/\($0)"
            }
        }
        
        if !queryParamaters.isEmpty {
            string += "?"
            let argumentsString = queryParamaters.compactMap {
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }.joined(separator: "&")
            
            string += argumentsString
            
            
        }
        
        return string
    }
    
    //MARK: - Public
    
    /// Desired HTTP method
    public let httpMethod = "GET"

    
    /// Computed & constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    
    /// Costruct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of Path components
    ///   - queryParamaters: Collection of Query parameters
    public init(
        endpoint: RMEndpoint,
        pathComponents: Set<String> = [],
        queryParamaters: [URLQueryItem] = []
         
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParamaters = queryParamaters
    }
    
}
