//
//  ContentView.swift
//  CustomTextFiled
//
//  Created by SevenInfosystem on 20/04/23.
//

import SwiftUI

public struct SignInCustomWithAnimationTextfiledView: View {
    
    @State private var fName        : String    = ""
    @State private var lName        : String    = ""
    @State private var email        : String    = ""
    @State private var phone        : String    = ""
    @State private var pass         : String    = ""
    @State private var ConfirmPass  : String    = ""
        
    public var body: some View {
        VStack(spacing: 20) {
            Text("SignIn View")
                .leftH()
                .headingFont()
                .padding(.vertical)
            
            //MARK: - First Name
            CustomTextFiledMethod(
                placeHolderName: "First Name",
                text: $fName,
                style: .MatrialTextfiled,
                imageStyle: .none,
                textFiledType: .NameType,
                sfImage: "person.fill",
                isAnimation: false
            )
            
            //MARK: - Last Name
            CustomTextFiledMethod(
                placeHolderName: "Last Name",
                text: $lName,
                style: .OutLineTextFiled,
                imageStyle: .sfImage,
                textFiledType: .NameType,
                sfImage: "person.fill",
                isAnimation: true
            )
            
            //MARK: - Phone Number
            CustomTextFiledMethod(
                placeHolderName: "Phone Number",
                text: $phone,
                style: .UnderLineTextFiled,
                imageStyle: .sfImage,
                textFiledType: .TenDigitPhoneNumberType,
                sfImage: "phone.fill",
                isAnimation: true
            )
            
            //MARK: - Email
            CustomTextFiledMethod(
                placeHolderName: "Email Address",
                text: $email,
                style: .CapsuleTextFiled,
                imageStyle: .sfImage,
                textFiledType: .EmailType,
                sfImage: "envelope.fill",
                isAnimation: true
            )
            
            //MARK: - Password
            CustomTextFiledMethod(
                placeHolderName: "Password",
                text: $pass,
                style: .MatrialTextfiled,
                imageStyle: .sfImage,
                textFiledType: .PasswordType,
                sfImage: "square.and.pencil.circle.fill",
                isDisplayCloseBtn: false,
                isAnimation: false
            )
            
            //MARK: - Confirm Password
            CustomTextFiledMethod(
                placeHolderName: "Confirm Password",
                text: $ConfirmPass,
                style: .OutLineTextFiled,
                imageStyle: .sfImage,
                textFiledType: .PasswordType,
                sfImage: "square.and.pencil.circle.fill",
                isDisplayCloseBtn: false,
                isAnimation: true
            )
            
            //MARK: - Submit Button
            Button {
               validation()
            } label: {
                Text("Submit")
                    .bold()
                    .font(.title3)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
            }
            .padding()
            .background {
                Capsule()
            }
            .padding(.top)
            
            Spacer()
        }
        .padding()
        
        
    }
    
    func validation()  {
        if isValidName(text: fName) {
            fName = "Sucessfull"
        }
        if isValidName(text: lName) {
            lName = "Sucessfull"
        }
        if isValidPhoneNumber(phone: phone) {
            phone = "Sucessfull"
        }
        if isValidEmail(email: email) {
            email = "Sucessfull"
        }
        if pass == ConfirmPass {
            pass = "Sucessfull"
            ConfirmPass = "Sucessful"
        }
        else {
            if !isValidName(text: fName) {
                fName = ""
            }
            if !isValidName(text: lName) {
                lName = ""
            }
            if !isValidPhoneNumber(phone: phone) {
                phone = ""
            }
            if !isValidEmail(email: email) {
                email = ""
            }
            if pass != ConfirmPass {
                pass = ""
                ConfirmPass = ""
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignInCustomWithAnimationTextfiledView()
    }
}
