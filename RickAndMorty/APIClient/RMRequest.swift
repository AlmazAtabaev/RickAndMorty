//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Алмаз Атабаев on 9/2/23.
//

import Foundation


/// Object that represents a singlet API call
final class RMRequest {
    // Query parametres
    
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired Endpoint
    private let endpoint: RMEndpoint
    
    /// Path components for API, if any
    private let pathComponents: Set<String>
    
    /// Query arguments for API, if any
    private let queryParametres: [URLQueryItem]
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            string += "/"
            pathComponents.forEach ({
                string += "/\($0)"
            })
        }
        if !queryParametres.isEmpty {
            string += "?"
            let argumentString = queryParametres.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
        }
        return string
    }
    
    
    /// Computed & Constructed API url
    public var url:URL? {
        return URL(string: urlString)
    }
    
    /// Desired http method
    public let httpMethod = "GET"
    
    // MARK: - Public

    
    /// Construct Request
    /// - Parameters:
    ///   - endpoint: Target Endpoint
    ///   - pathComponents: Collection of Path components
    ///   - queryParametres: Collection of query parameters
   public init(endpoint: RMEndpoint,
pathComponents: Set<String> = [],
         queryParametres: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParametres = queryParametres
    }
}

