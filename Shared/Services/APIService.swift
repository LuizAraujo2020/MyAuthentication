//
//  APIService.swift
//  MyAuthentication
//
//  Created by Luiz Araujo on 06/08/22.
//

import Foundation

class APIService {
    static let shared = APIService()
    enum APIError: Error {
        case error
    }
    
    /// Simulates an async API call
    func login(credentials: Credentials,
               completion: @escaping (Result< Bool, APIError>) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            if credentials.password == "password" {
                completion(.success(true))
            } else {
                completion(.failure(APIError.error))
            }
        }
    }
}
