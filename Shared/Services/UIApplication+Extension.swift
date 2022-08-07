//
//  UIApplication+Extension.swift
//  MyAuthentication
//
//  Created by Luiz Araujo on 06/08/22.
//

import UIKit

/// Allow to dismiss the keyboar if tapped outside the login entry fields
extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
