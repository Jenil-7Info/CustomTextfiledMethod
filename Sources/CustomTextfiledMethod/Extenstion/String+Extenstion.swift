//
//  String+Extenstion.swift
//  
//
//  Created by SevenInfosystem on 22/04/23.
//

import Foundation
import SwiftUI

extension View {
    
    //MARK: - EmailAddress Validation
    public func isValidEmail(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    //MARK: - User Name Validation
    public func isValidName(text: String) -> Bool {
        let usernameRegEx = "^[a-zA-Z-]+"
        let userPred = NSPredicate(format:"SELF MATCHES %@", usernameRegEx)
        return userPred.evaluate(with: text)
    }
    
    //MARK: - Phone Number Validation
    public func isValidPhoneNumber(phone: String) -> Bool {
        let phoneRegEx = "^\\d{3}\\d{3}\\d{4}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneRegEx)
        return phoneTest.evaluate(with: phone)
    }
    
    //MARK: - Check Password and ConfirmPassword
    public func isBothSamePassword(_ password: String, ConfirmPassword: String) -> Bool {
        if password == ConfirmPassword {
            return true
        }
        else {
            return false
        }
    }
}
