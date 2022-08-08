//
//  Credentials.swift
//  MyAuthentication (iOS)
//
//  Created by Luiz Araujo on 06/08/22.
//

import Foundation

struct Credentials: Codable {
    var email: String    = ""
    var password: String = ""
    
    func encode() -> String {
        let encoder = JSONEncoder()
        let credentialsDate = try! encoder.encode(self)
        return String(data: credentialsDate, encoding: .utf8)!
    }
    
    static func decode(_ credentialsString: String) -> Credentials {
        let decoder = JSONDecoder()
        let jsonData = credentialsString.data(using: .utf8)
        return try! decoder.decode((Credentials.self), from: jsonData!)
    }
}





































