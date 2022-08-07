//
//  Authentication.swift
//  MyAuthentication
//
//  Created by Luiz Araujo on 06/08/22.
//

import SwiftUI

class Authentication: ObservableObject {
    @Published var isValidated = false
    
    func updateValidation(success: Bool) {
        withAnimation {
            isValidated = success
        }
    }
}
