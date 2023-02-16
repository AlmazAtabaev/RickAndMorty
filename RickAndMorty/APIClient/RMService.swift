//
//  RMService.swift
//  RickAndMorty
//
//  Created by Алмаз Атабаев on 9/2/23.
//

import Foundation


/// Primary API service object to get Rick and Morty
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    
    
    /// Privatized constructor
    private init() {}
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func execute<T:Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping(Result<T,Error>) -> Void) {
    }
}



