//
//  LoginViewModel.swift
//  MyAuthentication
//
//  Created by Luiz Araujo on 06/08/22.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var credentials = Credentials()
    /// Toggle the state whether is showing or not a ProgressView.
    /// Appears when the user taps in the LoginButton
    /// Disappears once the authentication process is complete
    @Published var showProgressView = false
    @Published var error: Authentication.AuthenticationError?
    
    var loginDisabled: Bool {
        credentials.email.isEmpty || credentials.password.isEmpty
    }
    
    /// To login using the API Login Service
    func login(completion: @escaping (Bool) -> Void) {
        showProgressView = true
        
        APIService.shared.login(credentials: credentials) { [unowned self] (result: Result<Bool, Authentication.AuthenticationError>) in
            showProgressView = false
            
            switch result {
            case .success:
                completion(true)
            case .failure(let authError):
                credentials = Credentials()
                error = authError
                completion(false)
            }
        }
    }
}
